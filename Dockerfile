# start from bitnami apache
FROM bitnami/apache

# build portal
RUN npm install && bower install && grunt

# the static content is mapped in the docker-compose.yml
#   volumes:
#   - ./vhosts:/bitnami/apache/conf/vhosts
#   - ./dist/public:/app
