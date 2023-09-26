#!/usr/bin/with-contenv bashio
if [ ! -d "/share/ingress-reverse-proxy" ]; then
    bashio::log.info "copying default nginx.conf to homeassistant into /share/ingress-reverse-proxy..."
    mkdir -p /share/ingress-reverse-proxy \
    && cp -a /etc/nginx/. /share/ingress-reverse-proxy/
fi
    bashio::log.info "copying nginx.conf to the container from /share/ingress-reverse-proxy..."
    rm -rf /etc/nginx/
    cp -a /share/ingress-reverse-proxy/. /etc/nginx/


bashio::log.info "Starting NGinx..."
exec nginx