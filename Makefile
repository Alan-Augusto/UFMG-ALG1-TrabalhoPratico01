CC = g++
CXXFLAGS = -std=c++11 -g -Wall

# folders
INCLUDE_FOLDER = ./include/
BIN_FOLFER = ./bin/
OBJ_FOLDER = ./obj/
SRC_FOLDER = ./src/
OUTPUT_FOLDER = ./output/

# all sourcers, obs, and header files
MAIN = tp01
TARGET = tp01
SRC = $(wildcard $(SRC_FOLDER)*.cpp)
OBJ = $(patsubst $(SRC_FOLDER)%.cpp, $(OBJ_FOLDER)%.o, $(SRC))
LOGDATE = $(shell date +"%b/%d at %kh:%Mm")
EXE = $(BIN_FOLFER)main

$(OBJ_FOLDER)%.o: $(SRC_FOLDER)%.cpp
	$(CC) $(CXXFLAGS) -c $< -o $@ -I$(INCLUDE_FOLDER)

all: comp

comp: $(OBJ) 
	$(CC) $(CXXFLAGS) -o $(TARGET) $(OBJ)

clean:
	rm tp01
	rm ./obj/functions.o
	rm ./obj/main.o
	clear

run:
	./tp01 ./input/CasoTeste.txt

git:
	git add .
	@echo "your commit text: "; \
    read AGE ;\
	git commit -m "Update $(LOGDATE) - $$AGE"
	git push