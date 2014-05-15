FROM centos:6.4

RUN yum install -y python-setuptools
RUN easy_install supervisor

RUN mkdir -p /var/log/supervisor
# create directory for child images to store configuration in
RUN mkdir -p /etc/supervisor/conf.d

ADD supervisord.conf /etc/supervisord.conf



