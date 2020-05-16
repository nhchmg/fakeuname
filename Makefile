
.PHONY: all clean install

TARGET = libfakeuname.so

all: $(TARGET) ;

fakeuname.o: fakeuname.c
	gcc -Wall -fPIC -g -c -DLINUX -Wall fakeuname.c

$(TARGET): fakeuname.o
	gcc -shared -rdynamic -Wl,-soname,$(TARGET) -o $(TARGET) fakeuname.o -ldl

clean:
	rm fakeuname.o $(TARGET)
	
install:
	cp $(TARGET) /usr/local/lib/$(TARGET)
