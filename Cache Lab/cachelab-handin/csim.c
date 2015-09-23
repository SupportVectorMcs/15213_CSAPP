//name: Long He, andrew id: longh

#include "cachelab.h"
#include <stdio.h>
#include <stdlib.h>
#include <getopt.h>
#include <string.h>
#include <unistd.h>

// define structures
typedef struct {
	int valid; 
	int tag; 
	int lru_counter;
} line;

typedef struct {
	line *lines;
} set;

typedef struct {
	int set_no; 	
	int line_no; 
	set *sets;
} cache_simulator;

// define global variables
int hit_count = 0;
int misse_count = 0;
int eviction_count = 0;

// get value of set bits
int setBits(int memoAddr, int set, int block) {
	int mask;
	mask = 0x7fffffff >> (31 - set);
	memoAddr >>= block;
	return (memoAddr & mask);
}

// get value of tag bits
int tagBits(int memoAddr, int set, int block) {
	int mask;
	mask = 0x7fffffff >> (31 - block - set);
	memoAddr >>= (block + set);
	return (memoAddr & mask);
}

// update the LRU counter
int lru_counter(cache_simulator *cache, int s, int l) {
	int i;
	for (i = 0; i < cache->line_no; i++) {
		if (cache->sets[s].lines[i].lru_counter > cache->sets[s].lines[l].lru_counter
			&& cache->sets[s].lines[i].valid) {
			-- cache->sets[s].lines[i].lru_counter;	
		}
	}
	cache->sets[s].lines[l].lru_counter = cache->line_no;
	return 0;
}

// parse reading command
int parseTraces(cache_simulator *cache, char *lineBuffer, int s, int E, int b, int flag) {
	int i, memoAddr, set, tag;
	char opt;
	sscanf(lineBuffer, " %c %x", &opt, &memoAddr);
	tag = tagBits(memoAddr, s, b);
	set = setBits(memoAddr, s, b);
	for (i = 0; i < cache->line_no; i++) {
		if (tag == cache->sets[set].lines[i].tag && cache->sets[set].lines[i].valid) {
			// hit
			if (opt == 'M') {
				hit_count += 2;
			} 
			else {
				++ hit_count;
			}
			lru_counter(cache, set, i);
			return 1; //hit
		}
	}

	// no hit
	++ misse_count;
	for (i = 0; i < cache->line_no; i++) {
		//empty line, no eviction
		if (!(cache->sets[set].lines[i].valid)) { 				
			cache->sets[set].lines[i].tag = tag;
			cache->sets[set].lines[i].valid = 1;
			lru_counter(cache, set, i);
			if (opt == 'M') {
				++ hit_count;
				return 4; // miss hit
			} 
			else {
				return 2; // miss	
			}
		}
	}

	// eviction
	++ eviction_count;
	for (i = 0; i < cache->line_no; i++) {
		if (cache->sets[set].lines[i].lru_counter == 1) {
			cache->sets[set].lines[i].tag = tag;
			cache->sets[set].lines[i].valid = 1;
			lru_counter(cache, set, i);
			if (opt == 'M') {
				++ hit_count;
				return 5; // miss eviction hit
			} 
			else {
				return 3; // miss eviction
			}
		}
	}
	return 0;
}

int main(int argc, char *argv[])
{
	cache_simulator cache;
	FILE *pFile;
	int status;
	char lineBuffer[100], traceName[100];

    // get information
	int opt, s, E, b, flag, arg_counter;
	arg_counter = 0;
	flag = 0;
	while (-1 != (opt = getopt(argc, argv, "vs:E:b:t:"))) {
		switch (opt) {
			case 'v':
				flag = 1;	
				break;
			case 's':
				++ arg_counter;
				s = atoi(optarg);	
				break;
			case 'E':
				++ arg_counter;
				E = atoi(optarg);
				break;
			case 'b':
				++ arg_counter;
				b = atoi(optarg);
				break;
			case 't':
				++ arg_counter;
				strcpy(traceName, optarg);
				break;
			default:
				printf("wrong argument\n");
				break;
		}
	}
	if (arg_counter < 4) {
		printf("wrong argument\n");
	}

	// initialize cache
	int i, j;
	cache.set_no = (1 << (s + 1));
	cache.line_no = E;
	cache.sets = (set *)malloc(cache.set_no * sizeof(set));
	if (!cache.sets) {
		printf("memory error\n");
		exit(-1);
	}
	for (i = 0; i < cache.set_no; i++) {
		cache.sets[i].lines = (line *)malloc(cache.line_no * sizeof(line));
		if (!cache.sets[i].lines) {
			printf("memory Error\n");
			exit(-1);
		}
		for (j = 0; j < cache.line_no; j++) {
			cache.sets[i].lines[j].valid = 0;
		}
	}


	pFile = fopen(traceName, "r");

	if (!pFile) {
		printf("cannot open the file\n");
		return -1;
	}

	while (fgets(lineBuffer, 100, pFile)) {
		if (lineBuffer[0] == ' ') {
			lineBuffer[strlen(lineBuffer) - 1] = '\0';
			status = parseTraces(&cache, lineBuffer, s, E, b, flag);
			if (flag) {
				switch (status) {
					case 1:
						printf("%s hit\n", lineBuffer + 1);
						break;
					case 2:
						printf("%s miss\n", lineBuffer + 1);
						break;
					case 3:
						printf("%s miss eviction\n", lineBuffer + 1);
						break;
					case 4:
						printf("%s miss hit\n", lineBuffer + 1);
						break;
					case 5:
						printf("%s miss eviction hit\n", lineBuffer + 1);
						break;
					default:
						break;
				}
			}
		}
	}
	fclose(pFile);
	printSummary(hit_count, misse_count, eviction_count);
	return 0;
}