#!/usr/bin/with-contenv bashio
if [ ! -d "/share/ingress-reverse-proxy9" ]; then
    bashio::log.info "copying default nginx.conf to homeassistant into /share/ingress-reverse-proxy9..."
    mkdir -p /share/ingress-reverse-proxy9/sfiles \
    && cp -a /etc/nginx/. /share/ingress-reverse-proxy9/
fi
    bashio::log.info "copying nginx.conf to the container from /share/ingress-reverse-proxy9..."
    rm -rf /etc/nginx/
    cp -a /share/ingress-reverse-proxy9/. /etc/nginx/


bashio::log.info "Starting NGinx..."
exec nginx
