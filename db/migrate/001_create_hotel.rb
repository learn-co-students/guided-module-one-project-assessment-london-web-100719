class CreateHotel < ActiveRecord::Migration 
#This is the database for the hotel
    def change 
        create_table :hotel do |t|
            t.string :name 
            t.string :email
            t.string :location 
        end 
    end 
end 