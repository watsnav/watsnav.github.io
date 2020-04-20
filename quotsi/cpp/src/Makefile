IDIR1 =../include
IDIR2 =/usr/local/include
CC=g++
CFLAGS=--std=c++17 -g -I$(IDIR1) -I$(IDIR2)

EXE=../qotd
ODIR=../obj
LDIR =/usr/local/lib
LFLAGS=-L$(LDIR)

LIBS=-lpqxx -lpq

_DEPS = $(wildcard $(IDIR1)/*.h)
DEPS = $(patsubst %,$(IDIR1)/%,$(_DEPS))

SRCS=$(wildcard *.cpp)

_OBJ = $(patsubst %.cpp, %.o, $(SRCS))
OBJ = $(patsubst %,$(ODIR)/%,$(_OBJ))

SRCS=$(wildcard *.cpp)

#$(ODIR)/%.o: %.cpp $(DEPS)
build: $(SRCS) $(DEPS)
	$(CC) -c $^ $(CFLAGS)
	mv *.o $(ODIR)

install: $(OBJ)
	$(CC) -o $(EXE) $^ $(CFLAGS) $(LFLAGS) $(LIBS)

.PHONY: clean

clean:
	rm -f *.o $(ODIR)/*.o ../qotd core 
