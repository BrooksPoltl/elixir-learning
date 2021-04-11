defmodule Discuss.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :email, :string
    field :token, :string
    field :provider, :string

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:email, :token, :provider])
    |> validate_required([:email, :token, :provider])
  end
end
