FROM golang:alpine

WORKDIR /build

COPY ./src .

RUN go build -o main .

WORKDIR /dist

RUN cp /build/main .

EXPOSE 3001

CMD [ "/dist/main" ]
