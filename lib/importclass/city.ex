defmodule Importclass.City do
	defstruct name: "", population: ""
	
	def set_name(c, name) do
	  %{c | name: name}
	end
	
	def set_population(c, population) do
	  %{c | population: population}
	end
end