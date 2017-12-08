run:
	@./bin/hello

image:
	sudo docker build -t alpine:hello .

build:
	mkdir -p bin
	sudo docker run --rm -v $(PWD):/build -it alpine:hello gcc -static  hello.c -o ./bin/hello
