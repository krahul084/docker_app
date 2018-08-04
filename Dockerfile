FROM centos
MAINTAINER Rahul <rkonidala@gmail.com>

#Make sure the container is updated
RUN yum update -y && yum install -y java git apache && 

RUN echo "Hello World" >> /var/www/html/index.html

ENTRYPOINT /etc/init.d/httpd start
