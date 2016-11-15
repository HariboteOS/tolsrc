TARGET     = obj2bim

all:	$(TARGET)

clean:
	rm -f $(TARGET)
	rm -f *.obj

$(TARGET):autodec.obj obj2bim.obj
	gcc -Wl,-s -o obj2bim ./autodec.obj obj2bim.obj\

obj2bim.obj:
	gcc -c -o obj2bim.obj obj2bim.c

autodec.obj:
	gcc -c -o autodec.obj autodec_.c
