#!/usr/bin/with-contenv bashio
if [ ! -d "/share/ingress-reverse-proxy8" ]; then
    bashio::log.info "copying default nginx.conf to homeassistant into /share/ingress-reverse-proxy8..."
    mkdir -p /share/ingress-reverse-proxy8/sfiles \
    && cp -a /etc/nginx/. /share/ingress-reverse-proxy8/
fi
    bashio::log.info "copying nginx.conf to the container from /share/ingress-reverse-proxy8..."
    rm -rf /etc/nginx/
    cp -a /share/ingress-reverse-proxy8/. /etc/nginx/


bashio::log.info "Starting NGinx..."
exec nginx
