FROM golang:1.11 as golang

COPY . /root/simple/
WORKDIR /root/simple
RUN ["go", "build", "-o", "./simple", "main.go"]

FROM alpine:latest

COPY --from=golang /root/simple/simple /root/simple/simple
WORKDIR /root/simple
RUN ["chmod", "u+x", "./simple"]

CMD ["/root/simple/simple"]