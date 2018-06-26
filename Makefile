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
	@if [ ! -d "$(OKDIR)" ]; then \
		echo ";; mkdir $(OKDIR)"; mkdir "$(OKDIR)"; \
	fi
	cp go_0023s/gcc/gocpp0 "$(OKDIR)/"
	cp go_0023s/gcc/gocc1 "$(OKDIR)/"
	cp go_0023s/gcc/gocc1plus "$(OKDIR)/"
	cp go_0023s/toolstdc/golib00 "$(OKDIR)/"
	cp go_0023s/toolstdc/sjisconv "$(OKDIR)/"
	cp go_0023s/toolstdc/gas2nask "$(OKDIR)/"
	cp go_0023s/toolstdc/nask "$(OKDIR)/"
	cp go_0023s/toolstdc/naskcnv0 "$(OKDIR)/"
	cp bim2bi4w/bim2bin "$(OKDIR)/"
	cp bim2hrb/bim2hrb "$(OKDIR)/"
	cp bin2obj0/bin2obj "$(OKDIR)/"
	cp makefont/makefont "$(OKDIR)/"
	cp edimg0j/edimg "$(OKDIR)/"
	cp obj2bi4d/obj2bim "$(OKDIR)/"
	cp t5lzma/t5lzma "$(OKDIR)/"
	cp haritol/haritol "$(OKDIR)/"
	cp multicmd/multicmd "$(OKDIR)/"
	-mkdir "$(OKDIR)/makeiso"
	cp fdimg2iso/fdimg2iso.dat "$(OKDIR)/makeiso/"
	cp fdimg2iso/fdimg2iso "$(OKDIR)/makeiso/"


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
	rm -rf "$(OKDIR)/"*



