defmodule SuperRentalsBackend.RentalView do
  use SuperRentalsBackend.Web, :view

  attributes [:title, :owner, :city, :type, :bedrooms, :image]
  
end
