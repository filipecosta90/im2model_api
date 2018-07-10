defmodule Im2modelApi.CifTest do
  use Im2modelApi.ModelCase

  alias Im2modelApi.Cif

  @valid_attrs %{atom_site_type_symbols: [], chemical_name_systematic: "some chemical_name_systematic", datakey: "some datakey", publ_section_title: "some publ_section_title"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Cif.changeset(%Cif{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Cif.changeset(%Cif{}, @invalid_attrs)
    refute changeset.valid?
  end
end
