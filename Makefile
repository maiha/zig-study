DOCKER_IMAGE=euantorano/zig:0.6.0
DOCKER=docker run --rm -it -u "$(id -u)" -v $(PWD):/v -w /v $(DOCKER_IMAGE)
COMPILE=build-exe

.PHONY: all compile

all: compile

compile:
	$(DOCKER) $(COMPILE) main.zig

clean:
	rm -f main main.o
