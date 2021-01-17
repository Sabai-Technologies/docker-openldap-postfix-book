FROM osixia/openldap:1.4.0
MAINTAINER Christophe Amory

RUN rm -r /container/service/slapd/assets/config/bootstrap/schema/mmc/
COPY ./schema/ /container/service/slapd/assets/config/bootstrap/schema/mmc/
COPY ./ldif/postfix-book.ldif /container/service/slapd/assets/config/bootstrap/ldif/99_postfix-book.ldif



