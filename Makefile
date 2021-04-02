
include ./makedefs


DIRS=blink freertos
DIRSCLEAN=$(addsuffix .clean,$(DIRS))

all:  $(DIRS)


$(DIRS):
	@$(MAKE) -C $@

clean: $(DIRSCLEAN)


$(DIRSCLEAN): %.clean:
	@$(MAKE) -C $* clean


.PHONY: all clean $(DIRS) $(DIRSCLEAN)
