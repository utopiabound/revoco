V=1.0
CFLAGS=-Os -g -DVERSION=\"$(V)\" -Wall -std=c11 $(USER_DEFINES)
#LDFLAGS=-s

revoco: revoco.o

clean:
	rm -f revoco revoco.o a.out

tag:
	git tag v$(V)

tar:
	git tar-tree v$(V) revoco-$(V) | gzip -9 >revoco-$(V).tar.gz

