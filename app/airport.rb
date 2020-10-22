class Airport < ActiveRecord::Base
has_many :trips
has_many :frequent_flyers, through: :trips


def self.finder_by_city
    system "clear"
  p "Airport locator by city"
    
  city_input = $prompt.ask("Please enter the city you wish to search for")
  self.finder_by_city_helper(city_input)
end
    

def self.finder_by_city_helper(city_input)
    target = Airport.all["city"].find do |result|
        result["city"] == city_input
        binding.pry
    end
end





   def self.finder_by_iata
        p "test finder_by_iata from app folder AIRPORT CLASS APP FOLDER"
    end

# def self.all
# Airport.all
# end

end