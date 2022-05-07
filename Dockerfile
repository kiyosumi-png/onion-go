# https://hub.docker.com/_/golang
FROM golang:1.18.1-alpine

RUN apk add git

WORKDIR /app

RUN go mod init github.com/kiyosumi-png/onion-go

RUN go get github.com/gin-gonic/gin

COPY  src .

EXPOSE 3000

CMD [ "go", "run", "main.go" ]