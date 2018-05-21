class CapBridge::CLI

    def call
        list_attractions
        options
        goodbye
    end

    def list_attractions
        puts "Attractions at Capilano Suspension Bridge Park"
        puts <<-DOC.gsub /^\s*/,''
            1. Suspension Bridge
            2. Cliffwalk
            3. Treetops Adventure
        DOC
    end

    def options
        input = nil
        while input != "exit"
            puts "Enter the number of the attraction you'd like to learn more about or type exit to exit:"
            input = gets.strip.downcase
            case input
            when "1"
                puts "More info on attraction 1..."
            when "2"
                puts "More info on attraction 2..."
            when "3"
                puts "More info on attraction 3..."
            end
        end
    end

    def goodbye
        puts "See you next time!"
    end
end