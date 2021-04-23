# Rumbl

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.setup`
  * Install Node.js dependencies with `npm install` inside the `assets` directory
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## To develop with Docker:

1. `docker-compose up -d`
1. `alias mix="docker-compose run --rm web mix"`
1. `alias iex="docker-compose run --rm web iex -S mix"`
1. `mix deps.get`
1. `mix ecto.create`
1. `mix ecto.migrate`
1. `mix run priv/repo/seeds.exs`
1. `mix test`
1. `open localhost:4000`

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix
