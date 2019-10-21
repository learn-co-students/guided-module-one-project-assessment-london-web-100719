class Hotel < ActiveRecord::Base
#This is the hotel class 
    has_many :reviews 
    has_many :users, through: :review 
end 