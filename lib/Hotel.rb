class Hotel < ActiveRecord::Base
#This is the hotel class 
    has_many :review 
    has_many :user, through: :review 
end 