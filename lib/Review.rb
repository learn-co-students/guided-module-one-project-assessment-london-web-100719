class Review < ActiveRecord::Base
#This is the review file
    belongs_to :user 
    belongs_to :hotel  
end 