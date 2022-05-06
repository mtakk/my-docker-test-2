FROM ruby:3.1
#ENV RAILS_ENV=production
#ENV RAILS_ENV=development
WORKDIR /myapp
COPY ./back /myapp/
EXPOSE 3000
RUN bundle install
COPY start.sh /start.sh
RUN chmod 744 /start.sh
CMD ["sh", "/start.sh"]