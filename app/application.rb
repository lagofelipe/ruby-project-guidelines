class Application < ActiveRecord::Base

#class created to manipulate CLi inputs
  

airports_raw = File.read('config/airport_list.json')
  all_airports = JSON.parse(airports_raw)
  





def find_airport_by_code(airport_code)
    target = all_airports["iata"].find do |result|
        result["iata"] == airport_code
def
    def


end