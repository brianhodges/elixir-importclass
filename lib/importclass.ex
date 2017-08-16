defmodule Importclass do
	def run do
		s1 = ["New York", "Virginia", "California", "Florida", "Hawaii"]
		c1 = %Importclass.City{name: "Los Angeles", population: "4 million"}
		country1 = %Importclass.Country{name: "USA", population: "350 million", states: s1, best_city: c1}
		
		s2 = ["Durango", "Puebla", "Guerrero", "Quintana Roo"]
		c2 = %Importclass.City{name: "Cancun", population: "700,000"}
		country2 = %Importclass.Country{name: "Mexico", population: "127 million", states: s2, best_city: c2}
		
		countries = [ country1, country2 ]
		{:ok, file} = File.open "log.txt", [:write]
		
		Enum.each countries, fn(country) ->
			:file.write(file, "Name: " <> country.name <> "\r\n")
			:file.write(file, "Population: " <> country.population <> "\r\n")
			:file.write(file, "Best States: " <> Enum.join(country.states, ", ") <> "\r\n")
			:file.write(file, "Top State Count: " <> to_string(Enum.count(country.states)) <> "\r\n")
			:file.write(file, "Best City: " <> country.best_city.name <> "\r\n")
			:file.write(file, country.best_city.name <> " Population: " <> country.best_city.population <> "\r\n\r\n")
		end
		
		File.close file
  
	end
end
