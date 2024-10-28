FROM golang:1.22.8

WORKDIR /app

COPY go.mod go.sum ./
RUN go mod download

COPY . .

EXPOSE 8080
EXPOSE 8000
EXPOSE 50051

CMD ["sh", "-c", "cd ./cmd/ordersystem && go run ."]
