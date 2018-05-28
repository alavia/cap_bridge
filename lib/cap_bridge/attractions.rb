class CapBridge::Attractions
    attr_accessor :name, :description, :url

    def self.all
        #should return all attractions
        # puts <<-DOC.gsub /^\s*/,''
        #     1. Suspension Bridge
        #     2. Cliffwalk
        #     3. Treetops Adventure
        # DOC

        attraction_1 = self.new
        attraction_1.name = "Suspension Bridge"
        attraction_1.description = "Originally built in 1889, Capilano Suspension Bridge stretches 450 feet (137m) across and 230 feet (70m) above Capilano River. Since then much has been added to the twenty-seven acre park. CLIFFWALK is the park’s newest attraction – a cantilevered walkway clinging to the granite cliff high above Capilano Canyon. Treetops Adventure, seven suspension bridges through the evergreens taking you up to 100 feet (30m) above the forest floor, offers a unique squirrel’s eye perspective of the forest. Guided nature tours, the Kids’ Rainforest Explorer program and the Living Forest exhibit enhance this unique rainforest encounter. Enjoy seasonal musical entertainment and First Nations culture. Take photos at the Totem Park and with the Capilano Tramps. Top it off with a visit to the gift shop full of quality merchandise from all over Canada and great homemade fudge! It’s all in a day’s fun at Capilano Suspension Bridge Park."
        attraction_1.url = "https://www.capbridge.com/explore/capilano-suspension-bridge/"

        attraction_2 = self.new
        attraction_2.name = "Cliffwalk"
        attraction_2.description = "This is the newest of the activities at Vancouver’s Capilano Suspension Bridge Park. Opened on June 3, 2011, this heart-stopping cliffside journey takes you through rainforest vegetation on a series of unobtrusive cantilevered and suspended walkways jutting out from the granite cliff face above Capilano River to previously unexplored areas of the park. Not for the faint of heart, it is high and narrow and, in some sections, glass (very strong glass) is all that separates guests from the canyon far below.  You don’t want to miss out on one of the most awe-inspiring Vancouver activities around.  Come visit us today!"
        attraction_2.url = "https://www.capbridge.com/explore/cliffwalk/"

        [attraction_1, attraction_2]
    end

end