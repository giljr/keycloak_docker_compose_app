FROM ruby:3.3

# Install system dependencies
RUN apt-get update -qq && \
    apt-get install -y nodejs postgresql-client

# Install bundler & Rails
RUN gem install bundler
RUN gem install rails

WORKDIR /app

CMD ["bash"]