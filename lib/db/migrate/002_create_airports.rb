class Airports < ActiveRecord::Migration[5.0]
    def change
      create_table :airports do |t|
        t.string :code
        t.string :city
      end
    end
  end