#creates the executable to run
myexe: main.o myfunc.o
	g++ $(CFLAGS) -o myexe main.o myfunc.o

#rebuilds the main file if the file has changed
main.o: main.cpp myfunc.h
	g++ $(CFLAGS) -c main.cpp

#rebuilds the myfunc file if the file has changed
myfunc.o: myfunc.cpp myfunc.h
	g++ $(CFLAGS) -c myfunc.cpp

#type 'make clean' to get remove the following
clean:
	rm -f *.o myexe
