PKGS:=st

all: $(PKGS)

.PHONY: st clean clean-all

st:
	make -C st

clean:
	-make -C st clean-common

clean-all: clean
	-make -C st clean-all
	-rm *.tar *.tar.gz *.tar.xz *.tar.bz2

	
