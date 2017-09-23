FROM alpine:3.6
LABEL maintainer="andreas.treichel@twofour.de"

# Standard-SMTP-Server um E-Mails zu versenden. Dieser muss das versenden ohne Authentifizierung erlauben.
ENV SMTP_HOST=smtp

COPY content /
RUN common-setup

ENTRYPOINT ["common-entrypoint"]
CMD ["sh"]
