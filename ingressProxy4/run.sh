#!/usr/bin/with-contenv bashio
if [ ! -d "/share/ingress-reverse-proxy4" ]; then
    bashio::log.info "copying default nginx.conf to homeassistant into /share/ingress-reverse-proxy4..."
    mkdir -p /share/ingress-reverse-proxy4/sfiles \
    && cp -a /etc/nginx/. /share/ingress-reverse-proxy4/
fi
    bashio::log.info "copying nginx.conf to the container from /share/ingress-reverse-proxy4..."
    rm -rf /etc/nginx/
    cp -a /share/ingress-reverse-proxy4/. /etc/nginx/


bashio::log.info "Starting NGinx..."
exec nginx
