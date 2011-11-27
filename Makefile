SUBDIRS = i9003
.PHONY: $(SUBDIRS)

all:	$(SUBDIRS)

i9003:
	cd i9003 && make

clean_i9003:
	cd i9003 && make clean

clean:	clean_i9003 
	rm -f *~

dist:
	tar cvfz ../milestone-overclock-module-1.4.8.tar.gz ../overclock/
