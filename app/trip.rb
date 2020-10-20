class Trip < ActiveRecord::Base
    belongs_to :frequentFlyer 
    belongs_to :airport
    
end