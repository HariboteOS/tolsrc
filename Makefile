MAKE=make
MAKEC=$(MAKE) -C
OKDIR=ok


all:
	$(MAKEC) go_0023s
	$(MAKEC) bim2bi4w
	$(MAKEC) bim2hrb
	$(MAKEC) bin2obj0
	$(MAKEC) makefont
	$(MAKEC) obj2bi4d
	$(MAKEC) edimg0j
	$(MAKEC) t5lzma
	$(MAKEC) haritol
	$(MAKEC) multicmd
	$(MAKEC) fdimg2iso


install:
	make all
#	- mkdir ok
	@if [ ! -d $(OKDIR) ]; then \
		echo ";; mkdir $(OKDIR)"; mkdir $(OKDIR); \
	fi
	cp go_0023s/gcc/gocpp0 ok/
	cp go_0023s/gcc/gocc1 ok/
	cp go_0023s/gcc/gocc1plus ok/
	cp go_0023s/toolstdc/golib00 ok/
	cp go_0023s/toolstdc/sjisconv ok/
	cp go_0023s/toolstdc/gas2nask ok/
	cp go_0023s/toolstdc/nask ok/
	cp go_0023s/toolstdc/naskcnv0 ok/
	cp bim2bi4w/bim2bin ok/
	cp bim2hrb/bim2hrb ok/
	cp bin2obj0/bin2obj ok/
	cp makefont/makefont ok/
	cp edimg0j/edimg ok/
	cp obj2bi4d/obj2bim ok/
	cp t5lzma/t5lzma ok/
	cp haritol/haritol ok/
	cp multicmd/multicmd ok/
	-mkdir ok/makeiso
	cp fdimg2iso/fdimg2iso.dat ok/makeiso/
	cp fdimg2iso/fdimg2iso ok/makeiso/


clean :
	$(MAKEC) go_0023s  clean
	$(MAKEC) bim2bi4w clean
	$(MAKEC) bim2bi4w clean
	$(MAKEC) bim2hrb clean
	$(MAKEC) bin2obj0 clean
	$(MAKEC) makefont clean
	$(MAKEC) obj2bi4d clean
	$(MAKEC) edimg0j clean
	$(MAKEC) t5lzma clean
	$(MAKEC) haritol clean
	$(MAKEC) multicmd clean
	$(MAKEC) fdimg2iso clean
	rm -rf ok/*



