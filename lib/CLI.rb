class CommandLineInterface
    def greet
        puts 'Welcome to Tetravago, the best resource for hotel information in the world!'
    end

    def start 
        greet 
        puts "here are some options for you, type the number corresponding to the option to call it."
        puts "If you wish to exit, type 'exit'"
        puts "(1) Find a hotel's reviews"
        puts "(2) Find a user's reviews"
        puts "(3) Display information of a user"
        puts "(4) Display information of a hotel"
        puts "(5) Create a new user"
        puts "What do you wish to do?"
        choice = gets.chomp
        if choice == "1"
            empty_lines
            read_hotel_all_review
        elsif choice == "2"
            empty_lines
            read_user_all_review
        elsif choice == "3"
            empty_lines
            display_user_info
        elsif choice == "4"
            empty_lines
            display_hotel_info
        elsif choice == "5"
            empty_lines
            create_user
        elsif choice == "exit"
            puts "k bye"
        else 
            puts "You didn't want to comply and neither did I, now I am leaving."
        end 
    end 

    def read_hotel_all_review 
        puts "Thinking of staying somewhere but not sure if it's good? We can help you with that decision!"
        puts "Enter a hotel name to get started:"
        hotel_name = gets.chomp
        puts "You are now looking at reviews for #{hotel_name} hotel"
        hotel = Hotel.find_by(name: hotel_name) #This only search a hotel but doesn't do anything with it yet
        reviews = hotel.reviews #find if a review exists in review for a given hotel, this is the Active Record Shortcut 
        show_reviews(reviews) #shows the reviews that have been found.
        empty_lines
        start
    end 

    def show_reviews(reviews)
        reviews.each do |review|
            puts ""
            puts "Username: #{review.user.name}"
            puts "Review Content: #{review.content}"
            puts ""
        end
    end

    def read_user_all_review
        puts "Curious about the review's someone wrote?"
        puts "Write their full name here:"
        user_name = gets.chomp 
        user = User.find_by(name: user_name)
        reviews = user.reviews #find if a review exists in review for a given user, this is the Active Record Shortcut 
        show_reviews(reviews) #shows the reviews that have been found.
        empty_lines
        start 
    end 

    def display_user_info 
        puts "In order to get the info of a user, enter their username: "
        user_name = gets.chomp
        user = User.find_by(name: user_name)
        puts "Name: #{user.name} Age: #{user.age} Email: #{user.email}"
        empty_lines
        start
    end 

    def display_hotel_info 
        puts "In order to get the info of a hotel, enter the hotel name: ".red
        hotel_name = gets.chomp
        hotel = Hotel.find_by(name: hotel_name)
        puts "Name: #{hotel.name} Email: #{hotel.email} Location #{hotel.location} Phone Number #{hotel.phone_number}"
        empty_lines
        start
    end 

    def create_user 
        puts "Enter new user name"
        user_name = gets.chomp 
        puts ""
        puts "Enter your age"
        age = gets.chomp 
        puts ""
        puts "Enter your email"
        email = gets.chomp 
        new_user = User.create(name: user_name, age: age, email: email)
        puts "Successfully added a new user !"
        empty_lines
        start

    end 

    def empty_lines 
        puts ""
        puts ""
        puts ""
        puts ""
        puts ""
    end 

    
end 