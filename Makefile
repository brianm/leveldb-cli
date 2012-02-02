LEVELB_PATH=../leveldb

CC=clang++
CFLAGS=-std=c++0x -stdlib=libc++ 
SOURCES=leveldb-cli.cc
OBJECTS=$(SOURCES:.cc=.o)
EXECUTABLE=leveldb-cli
LDFLAGS=

all: $(SOURCES) $(EXECUTABLE)

clean:
	rm -f *.o $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	$(CC) $(LDFLAGS) $(LEVELB_PATH)/libleveldb.a $(OBJECTS) -o $@

.cc.o:
	$(CC) -I$(LEVELB_PATH)/include $(CFLAGS) $< -o $@