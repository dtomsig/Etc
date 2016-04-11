PROGS = add load_main

all: $(PROGS)

add: 
	erlc add.erl
     
clean:
	rm -f *.beam *.dump
     
load_main:
	erl -noshell -s add main -s init stop
