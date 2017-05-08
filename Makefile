PKGS:=st tmux

all: $(PKGS)

.PHONY: st tmux clean clean-all

st:
	make -C st

tmux:
	make -C tmux

clean:
	-make -C st tmux clean-common

clean-all: clean
	-make -C st tmux clean-all
	-rm *.tar *.tar.gz *.tar.xz *.tar.bz2

	
