FROM alpine

RUN apk add --update mongodb-tools netcat-openbsd
COPY ./wait-for-mongo.sh .
RUN chmod 700 ./wait-for-mongo.sh

ENTRYPOINT ["/bin/sh", "./wait-for-mongo.sh"]