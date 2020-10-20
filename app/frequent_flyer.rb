class FrequentFlyer < ActiveRecord::Base
    has_many :trips
    has_many :airports, through: :trips
    
end