class FrequentFlyers < ActiveRecord::Migration[5.0]
    def change
      create_table :frequentflyers do |t|
        t.string :name
        t.string :home_airport
        t.string :medallion 
      end
    end
  end