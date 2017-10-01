FROM alpine:3.6
LABEL maintainer="gmblar+github@gmail.com"

ENV SMTP_HOSTNAME=smtp
ENV SMTP_STARTTLS=no

COPY content /
RUN common-setup

ENTRYPOINT ["common-entrypoint"]
CMD ["sh"]
