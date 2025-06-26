FROM golang:1.24.3-alpine

RUN go install github.com/air-verse/air@latest

WORKDIR /app

COPY . .

RUN go mod download

CMD ["air", "-c", ".air.toml"]
