class Airport < ActiveRecord::Base
has_many :trips
has_many :frequentflyers, through: :trips

end