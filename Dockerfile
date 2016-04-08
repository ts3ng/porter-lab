FROM golang:1.6-alpine

ADD . /go/src/github.com/adobe-platform/porter-lab
WORKDIR /go/src/github.com/adobe-platform/porter-lab

ENV CGO_ENABLED=0
RUN go build -a -o main

CMD ["./main"]
