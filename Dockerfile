FROM nodered/node-red:4.0.9

# Install mandatory libraries
RUN npm install \
    passport-keycloak-oauth2-oidc \
    node-red-contrib-influxdb \
    node-red-contrib-protobuf

# Copy settings file
COPY settings.js /data/settings.js
