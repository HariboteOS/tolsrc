TARGET     = edimg

OBJS       = $(TARGET).obj autodec.obj2


all:	$(TARGET)


clean:
	rm -f *.obj
	rm -f *.obj2
	rm -f $(TARGET)

$(TARGET):$(OBJS)
	gcc -Wl,-s -o edimg autodec.obj2 edimg.obj

edimg.obj:edimg.c
	gcc -c -o $@ edimg.c

autodec.obj2:autodec_.c
	gcc -c -o $@ autodec_.c
