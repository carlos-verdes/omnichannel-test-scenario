# start from nosolojava apache-node-docker
FROM nosolojava/apache-node-docker

# Bundle app source
COPY . /src

WORKDIR /src

RUN npm install 
#RUN bower install
#RUN grunt

# the static content is mapped in the docker-compose.yml
#   volumes:
#   - ./vhosts:/bitnami/apache/conf/vhosts
#   - ./dist/public:/app
