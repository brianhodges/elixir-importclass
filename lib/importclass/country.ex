defmodule Importclass.Country do
	defstruct name: "", population: "", states: nil, best_city: nil

	def set_name(c, name) do
	  %{c | name: name}
	end
	
	def set_population(c, population) do
	  %{c | population: population}
	end
	
	def set_states(c, states) do
	  %{c | states: states}
	end
	
	def set_best_city(c, best_city) do
	  %{c | best_city: best_city}
	end
end