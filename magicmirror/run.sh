#!/usr/bin/with-contenv bashio
if [ ! -d "/share/MagicMirror" ]; then
    bashio::log.info "copying default config to homeassistant..."
    mkdir -p /share/MagicMirror/config \
    && mkdir -p /share/MagicMirror/css \
    && mkdir -p /share/MagicMirror/modules \
    && cp /home/MagicMirror/config/config.js.sample /share/MagicMirror/config/config.js \
    && cp -a /home/MagicMirror/css/. /share/MagicMirror/css/ \
    && cp -a /home/MagicMirror/modules/. /share/MagicMirror/modules
else
    bashio::log.info "copying config to container..."
    rm -r /home/MagicMirror/config/*
    rm -r /home/MagicMirror/css/*
    rm -r /home/MagicMirror/modules/*
    
    cp -a /share/MagicMirror/config/. /home/MagicMirror/config/
    cp -a /share/MagicMirror/css/. /home/MagicMirror/css/
    cp -a /share/MagicMirror/modules/. /home/MagicMirror/modules
fi
bashio::log.info "starting MagicMirror..."
npm --prefix /home/MagicMirror run server
