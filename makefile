try: steamSearchlib.so try2.o
	$(CXX) $(CFLAGS) -o try  try2.o -L. -shared -fPIC -L/mnt/md0/old_home/github/super-chainsaw -lm -ldl -lsteamSearchlib rpath='${ORIGIN}'

try2: steamSearchlib.so try2.o
	$(CXX) $(CFLAGS) -o try  try2.o -L. -shared -fPIC -lm -ldl

steamSearch.o: steamSearch.cpp
	$(CXX) -c steamSearch.cpp -o steamSearch.o -fPIC

steamSearchlib.so: steamSearch.o
	$(CXX) -shared  -Wl,-soname,steamSearchlib.so -o steamSearchlib.so steamSearch.o -fPIC

try.o: try.cpp
	$(CXX) -L/mnt/md0/old_home/github/super-chainsaw -lm -ldl -o try.o try.cpp

try2.o: try.cpp
	$(CXX) -lm -ldl -o try2.o try.cpp














main: main.cc
	$(CXX) $(CFLAGS) -o main main.cc








clean:
	rm -rf *.o *.so