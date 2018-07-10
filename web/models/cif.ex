defmodule Im2modelApi.Cif do
  use Im2modelApi.Web, :model

  schema "cifs" do
    field :datakey, :string
    field :chemical_name_systematic, :string
    field :publ_section_title, :string
    field :atom_site_type_symbols, {:array, :string}

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:datakey, :chemical_name_systematic, :publ_section_title, :atom_site_type_symbols])
    |> validate_required([:datakey, :chemical_name_systematic, :publ_section_title, :atom_site_type_symbols])
  end
end
