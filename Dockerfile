FROM --platform=$BUILDPLATFORM golang:alpine AS build
ARG TARGETPLATFORM
ARG BUILDPLATFORM
WORKDIR /build
RUN echo "$BUILDPLATFORM -> $TARGETPLATFORM" > /log.txt
COPY * .
RUN go build -o go-sample .

FROM alpine
COPY --from=build /build/go-sample .
RUN mkdir -p /data

# EXPOSE 8080
CMD ["/go-sample"]
