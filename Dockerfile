FROM alpine 
RUN apk add --update sqlite && rm -rf /var/cache/apk/*
RUN apk add --update wget && rm -rf /var/cache/apk/*
RUN wget --no-check-certificate https://cdn.rawgit.com/times/data/master/sunday_times_panama_data.zip
RUN unzip sunday_times_panama_data.zip
