ifeq ($(shell uname -s), Linux)
	target = libstack.so
	CFLAGS = -fPIC
else
	target = libstack.dylib
	CFLAGS = -dynamiclib
endif

$(target): 
	clang $^ -shared $(CFLAGS) -D_GNU_SOURCE -o $@ stack.c
