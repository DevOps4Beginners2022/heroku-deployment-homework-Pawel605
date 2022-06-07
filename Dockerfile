FROM golang:1.17-alpine

ARG PORT=8080
ENV PORT=$PORT

WORKDIR  /home/app

COPY . /home/app

RUN go mod download
RUN go build -o app-server

EXPOSE $PORT

CMD ["./app-server"]