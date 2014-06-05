FROM ubuntu:14.04
MAINTAINER Orne Brocaar <info@brocaar.com>

# Install requirements
RUN apt-get update
RUN apt-get install -y nginx
RUN apt-get install -y uwsgi
RUN apt-get install -y uwsgi-plugin-python
RUN apt-get install -y supervisor
RUN apt-get install -y python-pip

# Add our app code
ADD . /app

# Disable running NGINX in daemon mode
RUN echo "daemon off;" >> /etc/nginx/nginx.conf
RUN rm /etc/nginx/sites-enabled/default

RUN ln -s /app/nginx/application.conf /etc/nginx/sites-enabled/
RUN ln -s /app/supervisor/application.conf /etc/supervisor/conf.d/

RUN cd /app && python setup.py install

EXPOSE 5000

CMD ["supervisord", "-n"]
