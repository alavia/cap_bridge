class CapBridge::CLI

    def call
        list_attractions
        menu
        goodbye
    end

    def list_attractions
        puts "Attractions at Capilano Suspension Bridge Park"
        @attractions = CapBridge::Attractions.all
    end

    def menu
        input = nil
        while input != "exit"
            puts "Enter the number of the attraction you'd like to learn more about or type list to see the list again or type exit:"
            input = gets.strip.downcase

            if input.to_i > 0
                puts @attractions[input.to_i-1]
            elsif input == "list"
                list_attractions
            else
                puts "Hmm, not sure what you mean. Try typing list or exit."
            end
        end
    end

    def goodbye
        puts "See you next time!"
    end
end