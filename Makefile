#Basic Docker build command
BUILDER := sudo docker build        

#Name of image to be created
IMAGE := alpine:hello

#Basic Docker run command
RUNNER := sudo docker run --rm

#Binds the PWD to one referenced in Docker image
DIRBIND := $(PWD):/build

#Compiler of choice
CC := gcc

#Flags for the compilation command
FLAGS := -static

#Files to be compiled
INPUT := hello.c

#Output name
OUTPUT := hello

#Output location
OUTLOC := bin

#Location mounted in image
MOUNT := /build

#---------------------------------------------------------------

run:
	@./bin/hello

image:
	$(BUILDER) -t $(IMAGE) .

build:
	mkdir -p $(OUTLOC)
	$(RUNNER) -v $(DIRBIND) -it $(IMAGE) \
    $(CC) $(FLAGS) \
    $(INPUT) \
    -o $(MOUNT)/$(OUTLOC)/$(OUTPUT)

clean:
	rm -rf ./bin
