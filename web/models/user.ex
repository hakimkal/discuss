defmodule Discuss.User do
  use Discuss.Web, :model
  schema "users" do
    field(:email, :string)
    field(:provider, :string)
    field(:token, :string)
    field(:bio, :string)
    field(:name, :string)
    has_many :topics , Discuss.Topic
    timestamps()
  end

  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:email,:provider,:token,:bio,:name])
    |> validate_required([:email,:provider,:token])
  end
end