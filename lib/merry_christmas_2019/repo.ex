defmodule MC.Repo do
  use Ecto.Repo,
    otp_app: :merry_christmas_2019,
    adapter: Ecto.Adapters.Postgres
end
