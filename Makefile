CC=g++
CFLAG=-Wall -Wextra -Werror -c
IFLAGCLS=-I../../inc/
IFLAGINC=-I../inc -IClasses/
OUTPUT=final
COMPILERES=main.o networkClass.o

all: link

link:compile
	cd lib/ && $(CC) $(COMPILERES) -o $(OUTPUT) && mv $(OUTPUT) ../bin && \
		cd .. 

compile:classes main.o

main.o:
	cd src && $(CC) $(CFLAG) main.cpp $(IFLAGINC) && mv *.o ../lib && cd ..

classes:networkClass.o

networkClass.o:
	cd src/Classes && $(CC) $(CFLAG) networkClass.cpp $(IFLAGCLS) && \
		mv *.o ../../lib && cd .. && cd ..
purge:
	cd lib && rm -rf *.o && cd ../bin && rm -rf * 

remake:

run:
	cd bin/ && ./$(OUTPUT) && cd ..

