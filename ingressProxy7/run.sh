#!/usr/bin/with-contenv bashio
if [ ! -d "/share/ingress-reverse-proxy7" ]; then
    bashio::log.info "copying default nginx.conf to homeassistant into /share/ingress-reverse-proxy7..."
    mkdir -p /share/ingress-reverse-proxy7/sfiles \
    && cp -a /etc/nginx/. /share/ingress-reverse-proxy7/
fi
    bashio::log.info "copying nginx.conf to the container from /share/ingress-reverse-proxy7..."
    rm -rf /etc/nginx/
    cp -a /share/ingress-reverse-proxy7/. /etc/nginx/


bashio::log.info "Starting NGinx..."
exec nginx
