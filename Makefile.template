# 在题目数据目录（而不是根目录）下执行 make

CC := g++
OBJ := bin
POSTFIX := out

SOURCES := $(wildcard ./*.cpp)
OBJECTS := $(patsubst ./%.cpp, $(OBJ)/%.$(POSTFIX), $(SOURCES))

all: $(OBJECTS)

$(OBJ)/%.$(POSTFIX): ./%.cpp
	$(CC) $< -o $@
	$@

clean: 
	rm -rf ./out/* ./bin/*
