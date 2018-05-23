defmodule Discuss.Repo.Migrations.AddUsers do
  use Ecto.Migration

  def change do
 create (table (:users)) do
   add(:email, :string)
   add(:provider, :string)
   add(:token, :string)

   add(:bio, :string)
   add(:name, :string)
   timestamps()
 end
  end
end
