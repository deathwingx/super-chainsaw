LD_FLAGS += -L$(DIR) -Wl,-R$(DIR) '-Wl,-R$$ORIGIN'
CXX = g++


main: main.cc test.so
	$(CXX) $(CFLAGS) -o main main.cc -ldl -L/mnt/md0/old_home/github/super-chainsaw/start_over -ltest

test.o: test.cc
	$(CXX) -c test.cc -o test.o -fPIC

test.so: test.o
	$(CXX) -shared  -Wl,-soname,test.so -o test.so test.o -fPIC

clean:
	rm -rf *.o *.so