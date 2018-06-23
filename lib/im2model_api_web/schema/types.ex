defmodule Im2modelApi.Schema.Types do
use Absinthe.Schema.Notation
use Absinthe.Ecto, repo: Im2modelApi.Repo

object :atom_type do
  field :name, :string
  field :symbol, :string
  end

  end
