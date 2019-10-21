10.times do 
    User.create(name: Faker::Name.name, age: Faker::Number.number(digits: 2))
end 

10.times do 
    Hotel.create(name: Faker::Company.name)
end 

10.times do 
    Review.create(users_id: User.all.sample.id, hotels_id: Hotel.all.sample.id, content: Faker::Hacker.say_something_smart)
end 