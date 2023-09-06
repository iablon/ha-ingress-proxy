ARG BUILD_FROM
FROM $BUILD_FROM

RUN apk add --no-cache nodejs npm git nano

COPY run.sh /

RUN chmod a+x /run.sh 

RUN rm -rv /home/ \
        && git clone https://github.com/MichMich/MagicMirror /home/MagicMirror/ \
        && npm --prefix /home/MagicMirror/ run install-mm


CMD [ "/run.sh" ]

