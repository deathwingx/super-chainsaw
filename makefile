try: steamSearchlib.so try.o
	$(CXX) $(CFLAGS) -o try  try.o -L. -shared

steamSearchlib.so: steamSearch.cpp
	$(CXX) -c steamSearch.cpp -o steamSearch.o
	$(CXX) -shared  -Wl,-soname,steamSearchlib.so -o steamSearchlib.so steamSearch.o

clean:
	rm -rf *.o *.so