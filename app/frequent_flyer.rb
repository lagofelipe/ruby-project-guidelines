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
             self.finder_by_name
     
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
            
            target = FrequentFlyer.where(home_airport: station_input)
            name_out = target.each {|flyer|puts flyer}
            puts ""
            puts "==== Agent: Your results are the following: ========" 
            puts ""
            puts "Medallion Holder Information: #{name_out}"
            puts ""
            puts "No other Medallion holders assigned to Station or FBO load"
        end
        


       def self.finder_by_name
           system "clear"
           p "Medallion Search By Name"
           name_input = $prompt.ask("Agent Warning: Please enter the Name you wish to view current Medallion information")
           self.medallion_by_name_helper(name_input)
       end

       def self.medallion_by_name_helper(name_input)
        target = FrequentFlyer.where(name: name_input)
        member_out = target.each {|flyer|puts flyer}
        puts "==== Agent: Your results are the following: ========" 
        puts ""
        puts "Medallion Holder Information: #{member_out}"
        puts ""
        puts "No other Medallion holders or companios listed under Members "
         main_menu 
        end




       def self.medallion_search
            system "clear"
            p "Medallion Search By Medalion Tier"
            brass_input = $prompt.ask("Agent Warning: Please enter Medallion Tier you wish to list")
            self.medallion_search_helper(brass_input)
       end
     
        def self.medallion_search_helper(brass_input)
            target = FrequentFlyer.where(medallion: brass_input)
            med_out = target.map {|flyer|flyer.name}
            puts "==== Agent: Your results are the following: ========" 
            puts ""
            puts med_out
            puts ""
            puts "No other Medallion holders for Tier "
            main_menu
        end
    

 end