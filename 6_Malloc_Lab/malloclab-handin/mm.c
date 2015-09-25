/*
 * mm.c
 * longh - Long He
 *
 * Implementation of malloc using segregated list, best fit with
 * boundary tag coalescing.
 */

#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <unistd.h>
#include "contracts.h"

#include "mm.h"
#include "memlib.h"


// Create aliases for driver tests
// DO NOT CHANGE THE FOLLOWING!
#ifdef DRIVER
#define malloc mm_malloc
#define free mm_free
#define realloc mm_realloc
#define calloc mm_calloc
#endif

/* $begin mallocmacros */
/* Basic constants and macros */
#define WSIZE       4       /* Word and header/footer size (bytes) */
#define DSIZE       8       /* Doubleword size (bytes) */
#define CHUNKSIZE  (1<<9)   /* Extend heap by this amount (bytes) */
#define HDR_SIZE    24  
#define MAX_LISTS   16
#define ALIGNMENT   8

#define MAX(x, y) ((x) > (y)? (x) : (y))

/* Pack a size and allocated bit into a word */
#define PACK(size, alloc)  ((size) | (alloc)) //line:vm:mm:pack

#define ALIGN(p) (((size_t)(p) + (ALIGNMENT - 1)) & ~0x7)

/* Read and write a word at address p */
#define GET(p)       (*(unsigned int *)(p))
#define PUT(p, val)  (*(unsigned int *)(p) = (val))

#define GETP(p)       ((void *)(p))
#define PUTP(p, val)  ((void *)(p) = (val))

/* Read the size and allocated fields from address p */
#define GET_SIZE(p)   (GET(p) & ~0x7)
#define GET_ALLOC(p)  (GET(p) & 0x1)

/* Given block ptr bp, compute address of its header and footer */
#define HDRP(bp)       ((char *)(bp) - WSIZE)
#define FTRP(bp)       ((char *)(bp) + GET_SIZE(HDRP(bp)) - DSIZE)

/* Given block ptr bp, compute address of next and previous blocks */
#define NEXT_BLKP(bp)  ((char *)(bp) + GET_SIZE(((char *)(bp) - WSIZE)))
#define PREV_BLKP(bp)  ((char *)(bp) - GET_SIZE(((char *)(bp) - DSIZE)))

#define NEXT_BLK_FREE(bp) (*(char **)(bp))
#define PREV_BLK_FREE(bp) (*((char **)(bp) + 1))

#define GET_LIST_HDR(i) (*((char **)(list_hdr) + i))

/* Function prototypes for internal helper routines */
static void *extend_heap(size_t words);
//static void place(void *bp, size_t asize);
static void *best_fit(size_t req_size);
static void *coalesce(void *bp);
static void printblock(void *bp);
//static void checkheap(int verbose);
static void checkblock(void *bp);
static void alloc(void *free_block, size_t req_size);
static void insert_blk(void *bp, int size);
static void remove_blk(void *bp,int size);
static int get_list_hdr(unsigned int n);
static void list_init(char *bp);
/* $end mallocmacros */

/* Global variables */
static char *heap_listp = 0;  /* Pointer to first block */
static char *heap_hdr = 0;
static char *list_hdr;

/*
 *  Logging Functions
 *  -----------------
 *  - dbg_printf acts like printf, but will not be run in a release build.
 *  - checkheap acts like mm_checkheap, but prints the line it failed on and
 *    exits if it fails.
 */

#ifndef NDEBUG
#define dbg_printf(...) printf(__VA_ARGS__)
#else
#define dbg_printf(...)
#endif

/* 
 * mm_init - Initialize the memory manager 
 */
int mm_init(void) {
    char *i = heap_listp = mem_sbrk(2 * HDR_SIZE + 40 * WSIZE);
    if (!i) {
        return -1;
    }
    PUT(heap_listp, 0);                          
    PUT(heap_listp + (1 * WSIZE), PACK(HDR_SIZE, 1)); 
    PUT(heap_listp + (2 * WSIZE), 0); 
    PUT(heap_listp + (3 * WSIZE), 0);    
    PUT(heap_listp + HDR_SIZE, PACK(HDR_SIZE, 1));
    PUT(heap_listp + WSIZE + HDR_SIZE, PACK(0, 1));
    list_hdr = heap_listp + 5 * WSIZE;
    heap_listp += DSIZE;                    
    heap_hdr = heap_listp;
    list_init(heap_listp);
    heap_listp = extend_heap(CHUNKSIZE/WSIZE);
    if (!heap_listp) {
        return -1;
    }
    return 0;
}

void list_init(char *bp) {
    for(int i = 0;i < MAX_LISTS; ++i) {
        GET_LIST_HDR(i) = bp;
    }
}

/* 
 * mm_malloc - Allocate a block with at least size bytes of payload 
 */
void *mm_malloc(size_t size) {
    char *bp;  
    size_t asize;     
    size_t extendsize;
    if (!size) {
        return NULL;
    }
    asize = MAX(ALIGN(size) + DSIZE, HDR_SIZE);
    bp = best_fit(asize);
    if (bp) {  
        alloc(bp, asize);                 
        return bp;
    }
    extendsize = MAX(asize,CHUNKSIZE);
    bp = extend_heap(extendsize/WSIZE);                
    if (!bp) {
        return NULL;                                  
    }  
    alloc(bp, asize);                                 
    return bp;
}

/* 
 * mm_free - Free a block 
 */
void mm_free(void *bp) {
    if(!bp) {
        return;
    }
    size_t size = GET_SIZE(HDRP(bp));
    if (!heap_listp) {
        mm_init();
    }
    PUT(HDRP(bp), PACK(size, 0));
    PUT(FTRP(bp), PACK(size, 0));
    coalesce(bp);
}

static void insert_blk(void *bp, int size) {
    int hdr_size = get_list_hdr(size);
    char* i = GET_LIST_HDR(hdr_size);
    NEXT_BLK_FREE(bp) = i;
    PREV_BLK_FREE(i) = bp;
    PREV_BLK_FREE(bp) = NULL;
    GET_LIST_HDR(hdr_size) = bp;
}

static void remove_blk(void *bp, int size){
    char *i = PREV_BLK_FREE(bp);
    int hdr_size = get_list_hdr(size);
    if (i) {
        NEXT_BLK_FREE(i) = NEXT_BLK_FREE(bp);
    }
    else {
        GET_LIST_HDR(hdr_size) = NEXT_BLK_FREE(bp);
    }
    PREV_BLK_FREE(NEXT_BLK_FREE(bp)) = i;
}

/*
 * coalesce - Boundary tag coalescing. Return ptr to coalesced block
 */
static void *coalesce(void *bp) {
    size_t prev_alloc = (bp == PREV_BLKP(bp)) ||
        GET_ALLOC(FTRP(PREV_BLKP(bp)));
    size_t next_alloc = GET_ALLOC(HDRP(NEXT_BLKP(bp)));
    size_t size = GET_SIZE(HDRP(bp));
    if (prev_alloc && next_alloc) {            
        //return bp;
    }
    else if (!prev_alloc && next_alloc) {      
        size += GET_SIZE(HDRP(PREV_BLKP(bp)));
        bp = PREV_BLKP(bp);
        remove_blk(bp,GET_SIZE(HDRP(bp)));
        PUT(HDRP(bp), PACK(size, 0));
        PUT(FTRP(bp), PACK(size, 0));
    }
    else if (!next_alloc && prev_alloc) {      
        size += GET_SIZE(HDRP(NEXT_BLKP(bp)));
        remove_blk(NEXT_BLKP(bp),GET_SIZE(HDRP(NEXT_BLKP(bp))));
        PUT(HDRP(bp), PACK(size, 0));
        PUT(FTRP(bp), PACK(size, 0));
    }
    else {                                     
        size += GET_SIZE(HDRP(PREV_BLKP(bp))) + 
            GET_SIZE(HDRP(NEXT_BLKP(bp)));
        void *prevbp = PREV_BLKP(bp);
        remove_blk(prevbp, GET_SIZE(HDRP(prevbp)));
        void *nextbp = NEXT_BLKP(bp);
        remove_blk(nextbp, GET_SIZE(HDRP(nextbp)));
        bp = PREV_BLKP(bp);
        PUT(HDRP(bp), PACK(size, 0));
        PUT(FTRP(bp), PACK(size, 0));
    }
    insert_blk(bp,size);
    return bp;
}

void *mm_realloc(void *ptr, size_t size) { 
    void *newptr;
    size_t oldsize;
    size_t newsize = MAX(ALIGN(size) + DSIZE, HDR_SIZE);
    if(ptr == NULL) {
        return malloc(size);
    }
    oldsize = GET_SIZE(HDRP(ptr));
    if(!size) {
        free(ptr);
        return 0;
    }
    oldsize = GET_SIZE(HDRP(ptr));
    if(newsize == oldsize || (oldsize - newsize) <= HDR_SIZE) {
        return ptr;
    }
    if(!(newptr = malloc(size))) {
        return 0;
    }
    if(size < oldsize) {
        oldsize = size;
    }
    if(newsize <= oldsize) {
        PUT(HDRP(ptr),PACK(newsize,1));
        PUT(FTRP(ptr),PACK(newsize,1));
        PUT(HDRP(NEXT_BLKP(ptr)),PACK(oldsize - newsize,1));
        PUT(FTRP(NEXT_BLKP(ptr)),PACK(oldsize - newsize,1));
        free(NEXT_BLKP(ptr));
        return ptr;
    }
    memcpy(newptr, ptr, oldsize);
    free(ptr);
    return newptr;
}

/* 
 * extend_heap - Extend heap with free block and return its block pointer
 */
static void *extend_heap(size_t words) {
    size_t size;
    char *bp;
    size = (words % 2) ? (words + 1) * WSIZE : words * WSIZE; 
    int i = (long)(bp = mem_sbrk(size));
    if (!(i + 1)) {
        return NULL;    
    }
    if (size < HDR_SIZE) {
        size = HDR_SIZE;
    }                                  
    PUT(HDRP(bp), PACK(size, 0));        
    PUT(FTRP(bp), PACK(size, 0));         
    PUT(HDRP(NEXT_BLKP(bp)), PACK(0, 1)); 
    return coalesce(bp);                                        
}

static void printblock(void *bp) {
    size_t hsize = GET_SIZE(HDRP(bp));
    size_t fsize = GET_SIZE(FTRP(bp));
    size_t halloc = GET_ALLOC(HDRP(bp));
    size_t falloc = GET_ALLOC(FTRP(bp));
    if (!halloc) {
        printf("%p: header:[%d:%c] prev:%p next:%p footer:[%d:%c]\n", 
            bp, (int) hsize, (halloc ? 'a' : 'f'), PREV_BLK_FREE(bp),
            NEXT_BLK_FREE(bp), (int) fsize, (falloc ? 'a' : 'f'));
    }
    else {
        printf("%p: header:[%d:%c] footer:[%d:%c]\n", bp, (int) hsize,
            (halloc ? 'a' : 'f'), (int) fsize, (falloc ? 'a' : 'f'));
    }
    if (!hsize){
        printf("%p: EOL\n", bp);
        return;
    }
}

static void checkblock(void *bp) {
    if (GET(HDRP(bp)) != GET(FTRP(bp)))
    printf("Error: header does not match footer\n");
    if ((size_t)bp % 8)
    printf("Error: %p is not doubleword aligned\n", bp);
}

/* 
 * checkheap - Minimal check of the heap for consistency 
 */
int mm_checkheap(int verbose) {
    char *bp = heap_listp;
    if ((GET_SIZE(HDRP(heap_hdr)) != HDR_SIZE) || 
            !GET_ALLOC(HDRP(heap_hdr))) {}
        checkblock(heap_listp);
    if (verbose) {
        printf("Heap (%p):\n", heap_listp);
    }
    for (bp = heap_listp; GET_SIZE(HDRP(bp)) > 0; bp = NEXT_BLKP(bp)) {
        if (verbose) {
            printblock(bp);
        }
        checkblock(bp);
    }
    if ((GET_SIZE(HDRP(bp)) != 0) || !(GET_ALLOC(HDRP(bp)))) {
        printf("Bad epilogue header\n");
    }
    if (verbose) {
        printblock(bp);
    }
    return 0;
}

void *calloc (size_t nmemb, size_t size) {
    size_t num = nmemb * size;
    void *newptr;
    newptr = malloc(num);
    memset(newptr, 0, num);
    return newptr;
}

static void alloc(void *free_block, size_t req_size) {
    size_t size_i = GET_SIZE(HDRP(free_block));
    void *next_bp;
    if ((size_i - req_size) < HDR_SIZE) {
        PUT(HDRP(free_block), PACK(size_i, 1));
        PUT(FTRP(free_block), PACK(size_i, 1));
        remove_blk(free_block,size_i);
    }
    else {
        PUT(HDRP(free_block), PACK(req_size, 1)); 
        PUT(FTRP(free_block), PACK(req_size, 1));
        remove_blk(free_block,size_i);
        next_bp = NEXT_BLKP(free_block);
        PUT(HDRP(next_bp), PACK(size_i - req_size, 0));
        PUT(FTRP(next_bp), PACK(size_i - req_size, 0));
        coalesce(next_bp); 
    }
}

static void *best_fit(size_t req_size) {
    int i;
    char *min = NULL;
    char *bp;
    for (i = get_list_hdr(req_size); i < MAX_LISTS; i++) {
        for (bp = GET_LIST_HDR(i); GET_ALLOC(HDRP(bp)) == 0; 
                bp =NEXT_BLK_FREE(bp)) {
            if (req_size <= (size_t) GET_SIZE(HDRP(bp))) {
                if (min == NULL || (size_t) GET_SIZE(HDRP(min)) <= 
                        (size_t) GET_SIZE(HDRP(bp))) {
                    min = bp;
                }
                return min;
            }
        }
    }
    return NULL;
}

static int get_list_hdr(unsigned int n){
    int i = 0;
    while(n>1) {
        n >>= 1;
        i++;
    }
    switch (i) {
        case 0: return 0;
        case 1: return 1;
        case 2: return 2;
        case 3: return 3;
        case 4: return 4;
        case 5: return 5;
        case 6: return 6;
        case 7: return 7;
        case 8: return 8;
        case 9: return 9;
        case 10: return 10;
        case 11: return 11;
        case 12: return 12;
        case 13: return 13;
        case 14: return 14;
        default: return 15;
    }
  return i;
}