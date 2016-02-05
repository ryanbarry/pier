FROM golang:1.5-alpine

RUN echo "PATH=$PATH" > ~/.profile

RUN apk add --update git bash

RUN go get golang.org/x/tools/cmd/goimports

CMD /bin/bash --login
