FROM ruby:latest
RUN apt-get update -qq && \
  apt-get install -y nodejs npm redis postgresql-client && \
  npm i -g npm yarn n && \
  n lts

WORKDIR /myapp
COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock
RUN bundle install
COPY . /myapp

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Start the main process.
# CMD ["rails", "server", "-b", "0.0.0.0"]