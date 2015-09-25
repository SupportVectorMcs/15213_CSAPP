/*
 *This is a group work, totally 2 members
 *Member 1:
 *     Andrew ID: ruiw1
 *     Name: Rui Wang
 *Member 2:
 *     Andrew ID: longh
 *     Name: Long He
 */
#ifndef	WRAPPER_H__
#define WRAPPER_H__

#include "csapp.h"

ssize_t Rio_readn_s(int fd, void *usrbuf, size_t n);
ssize_t Rio_readnb_s(rio_t *rp, void *usrbuf, size_t n);
ssize_t Rio_readlineb_s(rio_t *rp, void *usrbuf, size_t maxlen);
void Rio_writen_s(int fd, void *usrbuf, size_t n);

#endif
