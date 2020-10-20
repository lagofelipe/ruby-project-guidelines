class CreateTrips < ActiveRecord::Migration[5.0]
    def change
      create_table :trips do |t|
        t.string  :date
        t.string  :confirmation 
        t.integer :frequent_flyer_id
        t.integer :airport_id
      end
    end
  end