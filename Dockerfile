FROM alpine:3.12
RUN apk add --update sqlite
RUN mkdir /db
WORKDIR /db

ENTRYPOINT ["sqlite3"]
CMD ["test.db"]
CMD [CREATE TABLE COMPANY(
   ID INT PRIMARY KEY     NOT NULL,
   NAME           TEXT    NOT NULL,
   AGE            INT     NOT NULL,
   ADDRESS        CHAR(50),
   SALARY         REAL )]  
CMD [".tables"]
CMD ["SELECT * FROM COMPANY"]
