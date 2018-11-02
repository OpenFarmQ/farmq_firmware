defmodule FarmQ.OS.Repo do
  use Ecto.Repo,
    otp_app: :farmq_os,
    adapter: Ecto.Adapters.Postgres
end
