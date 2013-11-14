
prefix=/usr/local

# files that need mode 755
EXEC_FILES=git-wflow

# files that need mode 644
SCRIPT_FILES=gitwflow-common
SCRIPT_FILES+=git-wflow-test
SCRIPT_FILES+=git-wflow-branch
SCRIPT_FILES+=git-wflow-cherry-pick
SCRIPT_FILES+=git-wflow-finish

all:
	@echo "usage: make install"
	@echo "       make uninstall"

install:
	install -d -m 0755 $(prefix)/bin
	install -m 0755 $(EXEC_FILES) $(prefix)/bin
	install -m 0644 $(SCRIPT_FILES) $(prefix)/bin

uninstall:
	test -d $(prefix)/bin && \
	cd $(prefix)/bin && \
	rm -f $(EXEC_FILES) $(SCRIPT_FILES)
