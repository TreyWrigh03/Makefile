
#file Makefile
#author Daniel Wright
#date 2023-09-19

#make/Makefile assignment


CC = g++
CFLAGS = -g -Wall -Wextra
TARGET = employee #makes executable employee

default: all 

all: $(TARGET)

$(TARGET): main.o Employee.o Officer.o Supervisor.o
	$(CC) $(CFlags) -o $(TARGET) main.o Employee.o Officer.o Supervisor.o #links them all together

main.o: main.cpp Employee.h Officer.h Supervisor.h
	$(CC) $(CFlags) -c main.cpp #compile from main.o

Employee.o: Employee.cpp Employee.h
	$(CC) $(CFlags) -c Employee.cpp #compile from Employee.o

Officer.o: Officer.cpp Officer.h
	$(CC) $(CFlags) -c Officer.cpp #compile from Officer.o

Supervisor.o: Supervisor.cpp Supervisor.h
	$(CC) $(CFlags) -c Supervisor.cpp #compile from Supervisor.o

clean:
	$(RM) $(TARGET) *.o *~ #romves the not needed stuff
