defmodule SuperRentalsBackend.Router do
  use SuperRentalsBackend.Web, :router

  pipeline :api do
    plug :accepts, ["json-api"]
    plug JaSerializer.ContentTypeNegotiation
    plug JaSerializer.Deserializer
  end

  scope "/", SuperRentalsBackend do
    pipe_through :api

    resources "/rentals", RentalController, except: [:new, :edit]
  end

end
