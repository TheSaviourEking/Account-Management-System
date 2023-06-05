CC=clang
App=./BankApp
CFILES=./bank-management-system.c
FLAGS=-Wall -Wextra -Werror -fcommon
OBJECTS=./bank-management-system.o
HEADERS=./include/main.h

all: $(App)

$(App): $(OBJECTS)
	$(CC) $(FLAGS) $(OBJECTS) -o $(App)

$(OBJECTS): $(CFILES) $(HEADERS)
	$(CC) $(CFILES) -c

clean:
	rm $(App) $(OBJECTS)
