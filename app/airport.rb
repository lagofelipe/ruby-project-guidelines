class Airport < ActiveRecord::Base
has_many :trips
has_many :frequent_flyers, through: :trips



end