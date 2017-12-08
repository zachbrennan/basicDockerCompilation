# Basic C Compilation Image

This is a little test of how to build a Docker image, compile
C code inside of it, and then retrieve the compiled object 
from the image.

### Building the Image
*This section assumes Docker is installed. If it is not, follow
the instructions 
[HERE](https://docs.docker.com/engine/installation/)*

To build the image, a simple 
```
make image
```
command will do the trick. Details on how the image is
created are available as comments inside of the Dockerfile,
as well as in the Makefile.

### Compiling C Code

The image that is built from the Dockerfile here is a ight Alpine
Linux environment, so it may require additional packages to be
installed when building the image, for anything more complex than
the current basic *Hello World!* program that is included.

The *Hello World!* program can be compiled with a 
```
make build
```
command, that will build the code, and place the executable in 
the *./bin* directory. This can then be run with either a 
```
make run
```
or
```
./bin/hello
```
command.
