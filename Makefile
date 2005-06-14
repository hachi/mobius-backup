BASE	?= /usr/local
PREFIX	= $(DESTDIR)$(BASE)
BIN	= $(PREFIX)/bin

install:	cd-backup
		install	./cd-backup $(BIN)

diff-install:
	diff -u $(BIN)/cd-backup ./cd-backup || true

test:
	perl -c ./cd-backup
