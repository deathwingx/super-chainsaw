#include <iostream>
#include <dlfcn.h>
#include "test.hh"

int main(int argc, char const *argv[])
{
    /* code */

	void *handle;
	void (*test)(void);
	char *error;
    handle= dlopen("./test.so", RTLD_LAZY);

    test2(handle);

    std::cout << "here\n";
    return 0;
}
