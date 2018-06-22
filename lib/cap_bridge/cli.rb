class CapBridge::CLI

    def call
        welcome
        list_attractions
        menu
        # goodbye
    end

    def welcome
        puts "Welcome, Adventurer!"
        puts "If you're planning on visiting one of Vancouver's most beloved destinations, you've come to the right place!"
        puts "Check out the attractions at Capilano Suspension Bridge Park:"
    end
    def list_attractions
        
        @attractions = CapBridge::Attractions.current
        @attractions.each.with_index(1) do |attraction, i|
            puts "#{i}. #{attraction.name}"
        end
    end

    def menu
        input = nil
        while input != "exit"
            puts "Enter the number of the attraction you'd like to learn more about or type list to see the list again or type exit:"
            input = gets.strip.downcase

            if input.to_i.between?(1,10)
                the_attraction = @attractions[input.to_i-1]
                puts "#{the_attraction.name} - #{the_attraction.description}"
            elsif input == "list".downcase
                list_attractions
            elsif input == "exit".downcase
                goodbye
            else
                puts "Hmm, not sure what you mean. Try typing list or exit."
            end
        end
    end

    def goodbye
        puts "Enjoy your stay in Vancouver!"
        puts "See you next time!"
    end
end