class Hotel < ActiveRecord::Base
#This is the hotel class 
    has_many :reviews 
    has_many :users, through: :review 

    def self.find_by_name(name)
        Hotel.find_by(name: name)
    end 

    def self.create_hotel(hotel_name, email, location, phone_number)
        Hotel.create(name: hotel_name, email: email, location: location, phone_number: phone_number)
    end 
end 