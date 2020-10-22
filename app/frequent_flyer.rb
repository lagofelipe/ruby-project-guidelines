class FrequentFlyer < ActiveRecord::Base
    has_many :trips
    has_many :airports, through: :trips
    

      def self.medallion_menu
        system "clear"
        p "Medallion Menu - Agent: Please select criteria for Medallion Lookup Imformation"
        user_choice = $prompt.select "Please make your selection bellow", %w(station name medallion)

        if  user_choice == "station" 
               self.medallion_by_city
     
        elsif user_choice == "name"
             self.finder_by_iata
     
        else user_choice == "medallion"
            self.medallion_search

         end
       end

       def self.medallion_by_city
            system "clear"
            p "Medallion Search By Station"
            station_input = $prompt.ask("Agent Warning: Please enter the Station you wish to view current Medallion Load")
            self.medallion_by_city_helper(station_input)
        end

        def self.medallion_by_city_helper(station_input)
            system "clear"
            target = FrequentFlyer.all.select {|ff|ff.home_airport == station_input}
           
            puts ""
            puts "==== Agent: Your results are the following: ========" 
            puts target
            #binding.pry
      #puts "Airport Name: #{values.name} // IATA code: #{values.iata} // City: #{values.city} // Country: #{values.country} "
            puts ""
            puts "No other Airports in Registry matching search criteria"
        end



       def self.finder_by_iata
           system "clear"

       end

       def self.medallion_search
            system "clear"

       end
     

    

 end