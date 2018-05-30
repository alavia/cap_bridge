class CapBridge::Attractions
    attr_accessor :name, :description, :url

    def self.current
        # scrape site and return data
        self.scraper
    end

    def self.scraper
        attractions = []

        attractions << self.scrape_suspbridge
        attractions << self.scrape_cliffwalk

        attractions
    end

    # go to cap bridge site, find attractions
    # extract descriptions

    def self.scrape_suspbridge
        doc = Nokogiri::HTML(open("https://www.capbridge.com/explore/"))

        attraction = self.new
        attraction.name = doc.css("#menu-item-424").text #scrapes susp bridge title
        suspbridge_doc = Nokogiri::HTML(open("https://www.capbridge.com/explore/capilano-suspension-bridge/"))
        attraction.description = suspbridge_doc.css("p").children[1].text
    end

    def self.scrape_cliffwalk
        doc = Nokogiri::HTML(open("https://www.capbridge.com/explore/"))

        attraction = self.new
        attraction.name = doc.css("#menu-item-425").text
        cliffwalk_doc = Nokogiri::HTML(open("https://www.capbridge.com/explore/cliffwalk/"))
        attraction.description = cliffwalk_doc.css("p").children[1].text

        binding.pry
    end

end