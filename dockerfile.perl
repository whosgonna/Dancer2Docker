#FROM perl:latest
FROM scottw/alpine-perl

MAINTAINER ben.whosgonna.com@gmail.com

#RUN apk update; \
#    cpanm Modern::Perl
RUN cpk add tzdata; \
    cpanm  Modern::Perl;  \ 
    cpanm Dancer2

#CMD /usr/local/bin/perl -e 'print "Hello docker!\n"'
ENTRYPOINT /bin/sh
