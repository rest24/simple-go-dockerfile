    FROM golang:alpine AS build

    WORKDIR /app

    COPY . .

    RUN go mod download
    RUN go build -o simple-go-dockerfile

    FROM alpine

    WORKDIR /app

    COPY --from=build /app/simple-go-dockerfile /app/simple-go-dockerfile

    ENTRYPOINT [ "/app/simple-go-dockerfile" ]