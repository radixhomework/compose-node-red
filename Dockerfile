FROM nodered/node-red:

# Install mandatory libraries
RUN npm install \
    passport-keycloak-oauth2-oidc \
    node-red-contrib-influxdb \
    node-red-contrib-prometheus-exporter \
    node-red-contrib-graphite

# Copy settings file
COPY settings.js /data/settings.js
