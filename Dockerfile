FROM elixir:latest

# Allow apt to work with https-based sources
RUN apt-get update -yqq && apt-get install -yqq --no-install-recommends \
    apt-transport-https

# Ensure we install an up-to-date LTS version of Node
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -

RUN apt-get update -yqq && apt-get install -yqq --no-install-recommends \
    inotify-tools \
    nodejs \
    postgresql-client
RUN mix local.hex --force && \
    mix archive.install hex phx_new --force

ENV APP_HOME /usr/src/app
RUN mkdir $APP_HOME
COPY . $APP_HOME
WORKDIR $APP_HOME

CMD ["mix", "phx.server"]
