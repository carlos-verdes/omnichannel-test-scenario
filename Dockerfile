# start from bitnami apache
FROM bitnami/apache

# Install Node.js, npm and ruby
RUN apt-get update
RUN apt-get install -y nodejs
RUN apt-get install -y npm
RUN apt-get install -y ruby-full 

# Bundle app source
COPY . /src

WORKDIR /src

# install npm basic dependencies
RUN npm install -g yo
RUN npm install -g generator-angular-fullstack
RUN npm install -g grunt
RUN npm install -g grunt-cli
RUN npm install -g bower
RUN gem install sass

RUN npm install && bower install && grunt

# the static content is mapped in the docker-compose.yml
#   volumes:
#   - ./vhosts:/bitnami/apache/conf/vhosts
#   - ./dist/public:/app
