class Booking < ActiveRecord::Base
  has_many :trips
  has_many :users, through: trips
end
