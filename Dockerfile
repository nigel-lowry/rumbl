FROM elixir:latest

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
