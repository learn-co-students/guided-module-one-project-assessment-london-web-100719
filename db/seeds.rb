10.times do 
    User.create(name: Faker::Name.name)
end 

10.times do 
    Hotel.create(name: Faker::Company.name)
end 

10.times do 
    Review.create(user_id: User.all.sample.id, hotel_id: Hotel.all.sample.id, content: Faker::Hacker.say_something_smart)
end 