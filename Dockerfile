FROM golang:1.16-alpine
WORKDIR /app

COPY go.mod ./
RUN go mod download

COPY *.go ./

RUN go build -o /go_kubernetes

EXPOSE 8080

CMD [ "/go_kubernetes" ]