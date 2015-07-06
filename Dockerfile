# start from bitnami apache
FROM bitnami/apache

# Enable EPEL for Node.js
RUN     rpm -Uvh http://download.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm

# Install Node.js and npm
RUN     yum install -y npm

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
