FROM alpine:3.12
RUN apk add --update sqlite
RUN mkdir /db
WORKDIR /db
RUN /usr/bin/sqlite3 /db/test.db
CMD /bin/bash
