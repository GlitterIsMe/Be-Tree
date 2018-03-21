CXXFLAGS=-Wall -std=c++11 -g -O3 
#CXXFLAGS=-Wall -std=c++11 -g -pg -no-pie
#CXXFLAGS=-Wall -std=c++11 -g -pg -no-pie -DDEBUG

LDFLAGS=-lboost_serialization

CC=g++

test: test.cpp betree.hpp swap_space.hpp cache_manager.o backing_store.o

cache_manager.o: cache_manager.cpp cache_manager.hpp

backing_store.o: backing_store.hpp backing_store.cpp

clean:
	$(RM) *.o test
