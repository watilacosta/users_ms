FROM ruby:3.2.2-bullseye

RUN apt-get update -qq && apt-get install -y build-essential \
    postgresql-client \
    libpq-dev \
    graphviz

WORKDIR /home/users_ms
COPY Gemfile /home/users_ms/Gemfile
COPY Gemfile.lock /home/users_ms/Gemfile.lock
RUN bundle install

RUN chown -R $USER:$USER .

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3002

CMD ["rails", "server", "-b", "0.0.0.0"]
