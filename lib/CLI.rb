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
        if choice == 1
            read_a_review
        elsif choice == "exit"
            puts "jk you cant exit"
        end 

    end 

    def read_a_review 
        puts "Thinking of staying somewhere but not sure if it's good? We can help you with that decision!"
        puts "Enter a hotel name to get started:"
        hotel_name = gets.chomp
        puts "You are now looking at reviews for #{hotel_name} hotel"
        hotel = Hotel.find_by(name: hotel_name) #This only search a hotel but doesn't do anything with it yet
        #puts hotel.name
        reviews = Review.all.select { |review| review.hotel_id == hotel.id } #find if a review exists in review for a given hotel
        show_reviews(reviews)
    end 

    def show_reviews(reviews)
        reviews.each do |review|
            puts "Username: #{review.user.name}"
            puts "Review Content: #{review.content}"
        end
    end
        
end 