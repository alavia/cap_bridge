class CapBridge::CLI

    def call
        list_attractions
        options
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
        puts "Enter the number of the attraction you'd like to learn more about:"
    end
end