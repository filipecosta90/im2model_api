defmodule Im2modelApi.Repo.Migrations.CreateAtomTypes do
  use Ecto.Migration

  def change do
    create table(:atom_types) do
      add :type_name, :string
      add :type_symbol, :string
      add :atomic_number, :integer
      add :atomic_mass, :float
      add :melting_pt, :float
      add :boiling_pt, :float
      add :electroneg, :float
      add :electron_aff, :float
      add :valence, :integer
      add :calculated_r, :float
      add :empirical_r, :float
      add :covalent_r, :float
      add :vdw_r, :float
      add :cpk_color, :integer
      add :rasmol_color, :integer
      timestamps()
    end

  end
end
