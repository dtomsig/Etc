PROGS = solver load_main

all: $(PROGS)

solver: 
	erlc solver.erl
     
clean:
	rm -f *.beam *.dump
     
load_main:
	erl -noshell -s solver main _ -s init stop
