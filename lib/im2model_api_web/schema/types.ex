defmodule Im2modelApi.Schema.Types do
use Absinthe.Schema.Notation
use Absinthe.Ecto, repo: Im2modelApi.Repo

object :atom_type do
field :type_name, :string
field :type_symbol, :string
field :atomic_number, :integer
field :atomic_mass, :float
field :melting_pt, :float
field :boiling_pt, :float
field :electroneg, :float
field :electron_aff, :float
field :valence, :integer
field :calculated_r, :float
field :empirical_r, :float
field :covalent_r, :float
field :vdw_r, :float
field :cpk_color, :integer
field :rasmol_color, :integer
end

end
