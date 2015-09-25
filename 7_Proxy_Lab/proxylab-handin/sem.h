/*
 *This is a group work, totally 2 members
 *Member 1:
 *   Andrew ID: ruiw1
 *   Name: Rui Wang
 *Member 2:
 *   Andrew ID: longh
 *   Name: Long He
 */

#ifndef _SEM_H_
#define _SEM_H_

#include "include.h"

sem_t rlock;
sem_t wlock;
int readerCount;

void semInit(sem_t *rlock, sem_t *wlock);
void semReadP(sem_t *rlock, sem_t *wlock);
void semReadV(sem_t *rlock, sem_t *wlock);

#endif
