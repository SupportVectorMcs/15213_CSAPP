#
# Makefile for Proxy Lab 
#
# You may modify is file any way you like (except for the handin
# rule). Autolab will execute the command "make" on your specific 
# Makefile to build your proxy from sources.
#
CC = gcc
CFLAGS = -g -Wall
LDFLAGS = -lpthread

all: proxy

csapp.o: csapp.c csapp.h
	$(CC) $(CFLAGS) -c csapp.c

proxy.o: proxy.c csapp.h
	$(CC) $(CFLAGS) -c proxy.c

sd.o: sd.c sd.h
	$(CC) $(CFLAGS) -c sd.c

cache.o: cache.c cache.h
	$(CC) $(CFLAGS) -c cache.c

sem.o: sem.h sem.c
	$(CC) $(CFLAGS) -c sem.c

wrapper.o: wrapper.h wrapper.c
	$(CC) $(CFLAGS) -c wrapper.c

proxy: proxy.o csapp.o sd.o cache.o sem.o wrapper.o

# Creates a tarball in ../proxylab-handin.tar that you should then
# hand in to Autolab. DO NOT MODIFY THIS!
handin:
	(make clean; cd ..; tar cvf proxylab-handin.tar proxylab-handout --exclude tiny --exclude nop-server.py --exclude proxy --exclude driver.sh --exclude port-for-user.pl --exclude free-port.sh --exclude ".*")

clean:
	rm -f *~ *.o proxy core *.tar *.zip *.gzip *.bzip *.gz

