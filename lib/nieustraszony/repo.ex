defmodule Nieustraszony.Repo do
  use Ecto.Repo,
    otp_app: :nieustraszony,
    adapter: Ecto.Adapters.Postgres
end
