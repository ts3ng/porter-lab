FROM golang:1.6-alpine

EXPOSE 3000

ADD . /go/src/github.com/adobe-platform/porter-lab
WORKDIR /go/src/github.com/adobe-platform/porter-lab

RUN go build -o main

CMD ["./main"]
