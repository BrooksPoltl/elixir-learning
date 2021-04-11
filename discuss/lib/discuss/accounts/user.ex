defmodule Discuss.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset
  @derive {Jason.Encoder, only: [:email]}
  schema "users" do
    field :email, :string
    field :token, :string
    field :provider, :string
    has_many :topics, Discuss.Discussions.Topic
    has_many :comments, Discuss.Discussions.Comment
    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:email, :token, :provider])
    |> validate_required([:email, :token, :provider])
  end
end
