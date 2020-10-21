class Airport < ActiveRecord::Base
has_many :trips
has_many :frequent_flyers, through: :trips


# def finder_by_city
#     p "test finder_by_city from AIRPORT CLASS APP FOLDER"
#     $prompt.ask("Please enter the city you wish to search")
#     end
    
   
   
#     def finder_by_iata
#         p "test finder_by_iata from app folder AIRPORT CLASS APP FOLDER"
#     end


end