FROM golang:1.11

COPY . /root/simple/
WORKDIR /root/simple
RUN ["go", "build", "-o", "./simple", "main.go"]
RUN ["chmod", "u+x", "./simple"]

CMD ["/root/simple/simple"]