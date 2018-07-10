defmodule Im2modelApi.AtomType do
  use Ecto.Schema
  import Ecto.Changeset


  schema "atom_types" do
    field :atomic_mass, :float
    field :atomic_number, :integer
    field :boiling_pt, :float
    field :calculated_r, :float
    field :covalent_r, :float
    field :cpk_color, :integer
    field :electron_aff, :float
    field :electroneg, :float
    field :empirical_r, :float
    field :melting_pt, :float
    field :type_name, :string
    field :rasmol_color, :integer
    field :type_symbol, :string
    field :valence, :integer
    field :vdw_r, :float

    timestamps()
  end

  @doc false
  def changeset(atom_type, attrs) do
    atom_type
    |> cast(attrs, [:type_name, :type_symbol, :atomic_number, :atomic_mass, :melting_pt, :boiling_pt, :electroneg, :electron_aff, :valence, :calculated_r, :empirical_r, :covalent_r, :vdw_r, :cpk_color, :rasmol_color])
    |> validate_required([:type_name, :type_symbol, :atomic_number, :atomic_mass, :melting_pt, :boiling_pt, :electroneg, :electron_aff, :valence, :calculated_r, :empirical_r, :covalent_r, :vdw_r, :cpk_color, :rasmol_color])
  end
end
