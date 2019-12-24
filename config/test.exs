use Mix.Config

# Configure your database
config :merry_christmas_2019, MC.Repo,
  username: "postgres",
  password: "postgres",
  database: "merry_christmas_2019_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :merry_christmas_2019, MCWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn
