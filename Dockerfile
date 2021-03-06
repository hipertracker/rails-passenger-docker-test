FROM phusion/passenger-full:0.9.29
ENV HOME /root
ENV RAILS_ENV development
CMD ["/sbin/my_init"]

RUN rm -f /etc/service/nginx/down
RUN rm /etc/nginx/sites-enabled/default
ADD webapp.conf /etc/nginx/sites-enabled/webapp.conf
RUN mkdir /home/app/webapp
RUN gem update --system
COPY --chown=app:app . /home/app/webapp
RUN cd /home/app/webapp && rvm-exec 2.5.0 bundle install

RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
