class User < ActiveRecord::Base
#This is the user file 
    has_many :reviews 
    has_many :hotels, through: :review 
end 