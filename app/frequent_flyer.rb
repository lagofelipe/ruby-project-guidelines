class FrequentFlyer < ActiveRecord::Base
    has_many :trips
    has_many :airports, through: :trips
    



#     def medallion_menu
#         p "medallion_menu test test from FREQUENT FLYER CLASSAUS"
#     end

end