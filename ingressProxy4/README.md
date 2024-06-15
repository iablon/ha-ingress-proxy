[![Open your Home Assistant instance and show the add add-on repository dialog with a specific repository URL pre-filled.](https://my.home-assistant.io/badges/supervisor_add_addon_repository.svg)](https://my.home-assistant.io/redirect/supervisor_add_addon_repository/?repository_url=https%3A%2F%2Fgithub.com%2Fiablon%2Fha-addons.git)

# Homeassistant-Ingress-Proxy 
This addon uses nginx and can be used to access dashboards and webpages directly from the homeassistant sidebar;

# How it works
The addon will create a folder: ```/share/ingress-reverse-proxy```, this folder will contain the configuration files of nginx and the ```sfiles``` folder;<br>
The ```sfiles``` folder will contain static files wich you can serve to the proxied service.<br>
Every time you restart the addon the files from ```/share/ingress-reverse-proxy``` are copied to the addon in ```/etc/nginx/``` and the new config are applied.