# Simple Go HTTP server with Docker

The goal of this repo is to have an example for future Docker projects using multi-platform builds. Golang is used in this demo since it has builtin cross-compilation with the compiler.


# Creating a buildx cross-platform builder

`docker buildx create --platform "linux/amd64,linux/arm64" --name crossbuilder --use`
