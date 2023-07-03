
CPP = gcc -std=c++17 -c

LINK = gcc -lstdc++ -lm -o

all: main

clean:
	rm -fr *.o

main: geohash.o main.o
	$(LINK) main geohash.o main.o

geohash.o: geohash.h geohash.cc
	$(CPP) geohash.cc

main.o: geohash.h main.cc
	$(CPP) main.cc

