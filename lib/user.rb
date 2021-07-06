class User < ActiveRecord::Base
    has_many :ratings
    has_many :videos, through: :ratings
end 
