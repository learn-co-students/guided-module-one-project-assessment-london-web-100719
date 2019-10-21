class CommandLineInterface
    def greet
        puts 'Welcome to Tetravago, the best resource for hotel information in the world!'
    end

    def start 
        greet 
        puts "here are some options for you, type the number corresponding to the option to call it."
        puts "If you wish to exit, type 'exit'"
        puts "Find a hotel's reviews (1)"
        puts "Find a user's reviews (2)"
        puts "Display all hotels (3)"
        puts "Display all users (4)"
        puts "What do you wish to do?"
        choice = gets.chomp
        if choice == "1"
            empty_lines
            read_hotel_all_review
        elsif choice == "2"
            empty_lines
            read_user_all_review
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

    def empty_lines 
        puts ""
        puts ""
        puts ""
        puts ""
        puts ""
    end 

    
end 