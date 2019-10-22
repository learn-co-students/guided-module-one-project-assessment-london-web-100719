class Hotel < ActiveRecord::Base
#This is the hotel class 
    has_many :reviews 
    has_many :users, through: :review 

    def self.find_by_name(name)
        Hotel.find_by(name: name)
    end 
end 