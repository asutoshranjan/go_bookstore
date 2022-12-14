FROM  golang:1.19.0-alpine3.16
RUN mkdir /app
ADD . /app
WORKDIR /app
RUN go mod init go_bookstore
RUN go build -o main .
CMD ["app/main"]