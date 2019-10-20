class CreateUser < ActiveRecord::Migration 
#This is the database for my user 
    def change 
        create_table :User do |t|
            t.string :name 
            t.string :email
            t.string :age 
        end 
    end 
end 