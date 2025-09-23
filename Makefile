CC      := gcc
CFLAGS  := -std=c11 -Wall -Wextra -Werror -g
INCLUDE := -Iinclude
SRC     := $(wildcard src/*.c)
OBJ     := $(patsubst src/%.c,build/%.o,$(SRC))
BIN     := bin/mycc

all: $(BIN)

bin build:
	mkdir -p $@

build/%.o: src/%.c | build
	$(CC) $(CFLAGS) $(INCLUDE) -c $< -o $@

$(BIN): bin $(OBJ)
	$(CC) $(CFLAGS) $(OBJ) -o $(BIN)

clean:
	rm -rf build bin

.PHONY: all clean
