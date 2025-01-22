CXX = g++
CXXFLAGS = -Iinclude -std=c++11

all: calculator main

calculator: src/calculator.o
	$(CXX) -shared -o libcalculator.so src/calculator.o

main: src/main.o
	$(CXX) -o main src/main.o -L. -lcalculator

src/main.o: src/main.cpp
	$(CXX) $(CXXFLAGS) -c src/main.cpp -o src/main.o

src/calculator.o: src/calculator.cpp
	$(CXX) $(CXXFLAGS) -c src/calculator.cpp -o src/calculator.o

clean:
	rm -f src/*.o main libcalculator.so