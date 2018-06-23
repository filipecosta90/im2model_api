defmodule Im2modelApiWeb.Schema do
use Absinthe.Schema
import_types Im2modelApi.Schema.Types

query do
field :atom_types, list_of(:atom_type) do
resolve fn _params, _info ->
{:ok, Im2modelApi.Repo.all(Im2modelApi.AtomType)}
end
end
end
end
