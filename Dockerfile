FROM alpine:3.12
RUN apk add --update sqlite
RUN mkdir /db
WORKDIR /db

ENTRYPOINT ["sqlite3"]
CMD ["test.db"]
