include ../include/rules.mak

all :
	$(MAKER) golib00 sjisconv gas2nask nask naskcnv0

clean :
	-$(DEL) *.obj
	-$(DEL) golib00 sjisconv gas2nask nask naskcnv0

golib00 : golib00.obj Makefile ../include/rules.mak
	$(LINK) -o $@ $@.obj

sjisconv : sjisconv.obj Makefile ../include/rules.mak
	$(LINK) -o $@ $@.obj

gas2nask : gas2nask.obj Makefile ../include/rules.mak
	$(LINK) -o $@ $@.obj

nask : nask.obj Makefile ../include/rules.mak
	$(MAKEC) ../nasklib
	$(MAKEC) ../go_lib
	$(LINK) -o nask nask.obj ../nasklib/nasklib.lib \
                ../go_lib/go_lib.lib ../go_lib/stdin.o

naskcnv0 : naskcnv0.obj Makefile ../include/rules.mak
	$(MAKEC) ../go_lib
	$(LINK) -o naskcnv0 naskcnv0.obj ../go_lib/go_lib.lib
