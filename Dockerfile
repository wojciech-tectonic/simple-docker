FROM golang:1.11

COPY . /root/simple/
WORKDIR /root/simple
RUN ["go", "build"]

CMD ["simple"]