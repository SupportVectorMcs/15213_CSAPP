/*
 *This is a group work, totally 2 members
 *Member 1:
 *   	Andrew ID: ruiw1
 *      Name: Rui Wang
 *Member 2:
 *       Andrew ID: longh
 *       Name: Long He
 */

#ifndef _CACHE_H_
#define _CACHE_H_

#include "include.h"
#include "csapp.h"

struct proxyCacheLine{
	char *block;
	char *tag;
	int counter;
	short valid;	
};

typedef	struct proxyCacheLine Line;

struct proxyCache{
	Line line[10];			
};

typedef struct proxyCache proxyCache;
typedef pthread_rwlock_t proxyLock;

//cache
void cacheDestroy(proxyCache *cache);
void cacheInit(proxyCache *cache);
int cacheGet(char *target, char *response, proxyCache *cache);
int cacheSet(char *tag, char *text, proxyCache *cache);
void cacheAdjust(proxyCache *cache);

proxyCache cache;
#endif
