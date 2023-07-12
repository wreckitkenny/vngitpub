FROM golang:1.18-alpine

WORKDIR /app

COPY . ./
RUN go mod download

COPY *.go ./

RUN CGO_ENABLED=0 GOOS=linux go build -o /app/vngitPub

EXPOSE 8000

CMD ["/app/vngitPub"]