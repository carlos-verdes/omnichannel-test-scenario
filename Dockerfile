# start from bitnami apache
FROM bitnami/apache

# add static content to apache
ADD . /app

