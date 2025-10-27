FROM golang:1.24.5

WORKDIR /app

COPY . .

##Descargar e instalar las dependencias
RUN go get -d -v ./...

##Construir la app
RUN go build -o api .

EXPOSE 8000

CMD ["./api"]