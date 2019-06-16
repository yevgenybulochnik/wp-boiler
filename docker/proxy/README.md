# Reverse Proxy Service
This service contains both traefik and a docker socket proxy container. The purpose of the docker socket proxy container is to prevent exposing the host machine docker socket on a public facing container

### Env Vars
```
AUTH_USER       # Username for basic auth for traefik dashboard
AUTH_PASSWORD   # Password for basic auth (Note: use htpasswd) for dashboard

ACME_ENABLE     # Enable use of letsencrypt
ACME_EMAIL      # Email to register domains
```

### Networking
Two networks are created with this service `proxy_traefik` and `proxy_traefik-apps`. All subsequent services should be attached to the apps network.
