FROM golang:1.23-alpine AS build
WORKDIR /src
COPY go.mod go.sum ./
RUN go mod download
COPY . .
RUN go test ./... && go build -o /out/decision ./cmd/decision
FROM alpine:3.20
COPY --from=build /out/decision /usr/local/bin/decision
EXPOSE 8080
ENTRYPOINT ["decision"]
