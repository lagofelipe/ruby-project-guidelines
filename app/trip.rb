class Trip < ActiveRecord::Base
    belongs_to :frequent_flyer 
    belongs_to :airport

    

    # t.string  :confirmation 
    # t.integer :frequentflyer_id
    # t.integer :airport_id




    
end