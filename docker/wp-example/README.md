# Example Wordpress Service
This service contains the Wordpress base with containers for wordpress and mysql. Additionally, the wordpress cli container can be used to automate the initial install of wordpress

### Env vars
```
WP_USER         # Username of both wordpress user and mysql user
WP_PASSWORD     # Password of both wordpress user and mysql user
WP_DB           # Database name

WP_DOMAIN       # Domain name for wordpress cli install and traefik host
WP_TITLE        # Website tile for wordpress cli install
WP_EMAIL        # User email for wordpress cli intall
```

### Volumes
* wp_data - all data contained in `/var/www/html`
* db_data - mysql database

### Networking
This services will connect to the `proxy_traefik-apps` network
