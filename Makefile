MyClassTest.o : MyClassTest.h MyClassTest.cpp
	g++ -c MyClassTest.cpp -o MyClassTest.o     
Hello : Hello.o  MyClassTest.o 
	g++ Hello.o  MyClassTest.o -o Hello
Hello.o : Hello.cpp MyClassTest.h
	g++ -c -Wall -o Hello.o Hello.cpp
clean :
	rm a.out Hello *.o Doxyfile; rm -fr html latex 
Doxyfile : 
	doxygen -g
documentation : Hello.cpp Doxyfile
	doxygen
