ifneq ($(wildcard /usr/include/X11/Xlib.h),)

OBJECTS_fpp_co_X11VirtualDisplay_so += channeloutput/X11VirtualDisplay.o
LIBS_fpp_co_X11VirtualDisplay_so=-lX11  -L. -lfpp -ljsoncpp

TARGETS += libfpp-co-X11VirtualDisplay.$(SHLIB_EXT)
OBJECTS_ALL+=$(OBJECTS_fpp_co_X11VirtualDisplay_so)

libfpp-co-X11VirtualDisplay.$(SHLIB_EXT): $(OBJECTS_fpp_co_X11VirtualDisplay_so) libfpp.$(SHLIB_EXT)
	$(CCACHE) $(CC) -shared $(CFLAGS_$@) $(CFLAGS) $(LIBS_fpp_co_X11VirtualDisplay_so) $(LDFLAGS) $(LDFLAGS_fpp_co_X11VirtualDisplay_so) $(OBJECTS_fpp_co_X11VirtualDisplay_so) -o $@

endif
