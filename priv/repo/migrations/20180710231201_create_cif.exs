defmodule Im2modelApi.Repo.Migrations.CreateCif do
  use Ecto.Migration

  def change do
    create table(:cifs) do
      add :datakey, :string
      add :chemical_name_systematic, :string
      add :publ_section_title, :string
      add :atom_site_type_symbols, {:array, :string}

      timestamps()
    end
  end
end
