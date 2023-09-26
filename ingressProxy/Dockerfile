ARG BUILD_FROM
FROM $BUILD_FROM

COPY run.sh /
RUN chmod a+x /run.sh 

RUN \
  apk --no-cache add \
    nginx \
  \
  && mkdir -p /run/nginx

RUN rm -f /etc/nginx/nginx.conf
COPY nginx.conf /etc/nginx/

CMD [ "/run.sh" ]