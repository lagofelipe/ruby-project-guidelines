class CreateAirports < ActiveRecord::Migration[5.0]
    def change
      create_table :airports do |t|
        t.string :iata
        t.string :name
        t.string :city
        t.string :country
      end
    end
  end