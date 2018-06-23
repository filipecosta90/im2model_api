defmodule Im2modelApiWeb.Router do
  use Im2modelApiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", Im2modelApiWeb do
    pipe_through :api
  end


   forward "/graphiql",
       Absinthe.Plug.GraphiQL,
           schema: Im2modelApiWeb.Schema

end
