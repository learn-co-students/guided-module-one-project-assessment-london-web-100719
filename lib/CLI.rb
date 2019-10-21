class CommandLineInterface
    
    def greet 
        puts "Welcome to Tetravago, the best resource for hotel information in the world!"
    end 

    def show_reviews(reviews)
        reviews.each do |review|
            puts "Hello World"
        end
    end

    #def run
        #greet
        #puts "Thinking of staying somewhere but not sure if it's good? We can help you with that decision!"
       # puts "Enter a hotel name to get started:"
       # hotel_name = gets.chomp
       # Hotel.find_by(name: hotel_name)
       # show_reviews
    #end

end 