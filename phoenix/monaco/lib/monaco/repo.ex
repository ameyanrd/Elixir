defmodule Monaco.Repo do
  use Ecto.Repo,
    otp_app: :monaco,
    adapter: Ecto.Adapters.Postgres
end
