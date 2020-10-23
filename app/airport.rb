class Airport < ActiveRecord::Base
has_many :trips
has_many :frequent_flyers, through: :trips


def self.finder_by_city
    system "clear"
  puts $pastel1.yellow("Airport locator by city - For non-IATA and Partner FBOs")
  puts $pastel1.red( "Agent Warning: Please only use this criteria for Million-Air Partner-FBOs and non-IATA stations")
  city_input = $prompt.ask("Please enter the city you wish to search for")
  self.finder_by_city_helper(city_input)
  
end
    
def self.finder_by_city_helper(city_input)
    system "clear"
    values = Airport.find_by city: city_input
    puts ""
    puts $pastel1.red("==== Agent: Your results are the following: ========") 
    puts $pastel1.green("Airport Name: #{values.name} // IATA code: #{values.iata} // City: #{values.city} // Country: #{values.country} ")
    puts ""
    puts $pastel1.red("No other Airports in Registry matching search criteria")
    main_menu
end

 def self.finder_by_iata
    system "clear"
    puts $pastel1.yellow("Airport locator by IATA code - Please use for all Network Stations and Assets")
      
    iata_input = $prompt.ask("Please enter the Station IATA you wish to search for")
    self.finder_by_iata_helper(iata_input)
    end

   def self.finder_by_iata_helper(iata_input)
    system "clear"
    station = Airport.find_by iata: iata_input
    puts ""
    puts $pastel1.red("==== Agent: Your results are the following: ========") 
    puts $pastel1.green("Airport Name: #{station.name} // IATA code: #{station.iata} // City: #{station.city} // Country: #{station.country} ")
    puts ""
    puts $pastel1.red("==== No other Company Stations in Registry matching search criteria =====")
    main_menu
   end





# def self.all
# Airport.all
# end

######
end###