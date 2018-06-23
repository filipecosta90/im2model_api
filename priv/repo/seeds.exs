# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Im2modelApi.Repo.insert!(%Im2modelApi.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
#
#

he = Im2modelApi.Repo.insert!(%Im2modelApi.AtomType{
  name: "Hydrogen",
  symbol: "H",
  atomic_number: 1,
  atomic_mass: 1.00794,
  melting_pt: 14.01,
  boiling_pt: 20.28,
  electroneg: 2.20,
  electron_aff: 72.8,
  valence: 1,
  calculated_r: 53.0,
  empirical_r: 25.0,
  covalent_r: 37.0,
  vdw_r: 120.0,
  cpk_color: 1,
  rasmol_color: 1
})
