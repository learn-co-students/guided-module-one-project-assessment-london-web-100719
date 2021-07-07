class User < ActiveRecord::Base
#This is the user file 
    has_many :review 
    has_many :hotel, through: :review 
end 