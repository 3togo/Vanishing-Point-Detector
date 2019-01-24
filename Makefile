CC=g++
CFLAGS =-g -Wall
SRCS =main.cpp
PROG =vanishing_point_detector

OPENCV = `pkg-config opencv --cflags --libs`
LIBS = $(OPENCV) -lm -larmadillo -lstdc++

.PHONY: clean

$(PROG):$(SRCS)
	$(CC) $(CFLAGS) -o $(PROG) $(SRCS) $(LIBS)

clean:
	rm -f $(PROG)

