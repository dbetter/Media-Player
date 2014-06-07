CC = gcc
CFLAGS = -c `sdl-config --cflags` 
LNFLAGS = -lSDL -lavformat -lavcodec -lavutil -lswscale
CCLINK = $(CC)
OBJS1 = mplayer.o


all: mplayer
# Creating the client executable
mplayer: $(OBJS1)
	$(CCLINK) mplayer.o -o mplayer $(LNFLAGS)


# Creating object files using default rules

mplayer.o: mplayer.c
	$(CC) $(CFLAGS) mplayer.c -o mplayer.o

# Cleaning old files before new make
clean:
	rm -f *.o
	rm -f mplayer
	

