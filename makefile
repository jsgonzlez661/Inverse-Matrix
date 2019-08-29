NAME 		= matriz_inversa
SOURCE 	    = $(NAME).c
CC  		= gcc
OBJ			= $(SOURCE:.c=.o)
LIBS		= -lm
BIN			= $(NAME)
OPTIM 	    = -Ofast -Wall
RM 			= rm -f

.PHONY: all all-before all-after clean clean-custom

%.o: %.cxx
	$(CC) $(OPTIM) -c -o $@ $<

all: all-before $(BIN) all-after

$(BIN): $(OBJ)
	$(CC) -o $(BIN) $(OBJ) $(LIBS)
	
clean: clean-custom
	$(RM) $(OBJ) $(BIN)
	