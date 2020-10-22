class FrequentFlyer < ActiveRecord::Base
    has_many :trips
    has_many :airports, through: :trips
    

      def self.medallion_menu
        p "Medallion menu - Agent: Please select the following options"
    end

 end