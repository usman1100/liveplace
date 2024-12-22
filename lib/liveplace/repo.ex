defmodule Liveplace.Repo do
  use Ecto.Repo,
    otp_app: :liveplace,
    adapter: Ecto.Adapters.SQLite3
end
