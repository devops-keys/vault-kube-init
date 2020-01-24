FROM golang:latest
WORKDIR /devopskeys
COPY go.mod go.sum ./
RUN go mod download
COPY . .
RUN go build -o vault .
CMD ["./vault"]