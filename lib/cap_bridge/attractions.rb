class CapBridge::Attractions
    attr_accessor :name, :description, :url
    @@all = []
    @@attractions = []

    def self.all
        @@all
    end

    def self.clear_all
        @@all.clear
    end

    def save
        @@attractions << self
    end

    def self.attractions
        @@attractions
    end
    # def self.current
    #     # scrape site and return data
    #     self.scrape_attractions
    # end

    # def self.scraper
    #     something()

    #     attractions = []

    #     attractions << self.scrape_suspbridge
    #     attractions << self.scrape_cliffwalk
    #     attractions << self.scrape_treetops
    #     attractions << self.scrape_storycentre
    #     attractions << self.scrape_kiapalano
    #     attractions << self.scrape_raptors
    #     attractions << self.scrape_tours
    #     attractions << self.scrape_forest
    #     attractions << self.scrape_kids
    #     attractions << self.scrape_lights

    #     attractions
    # end

    # def self.scrape_suspbridge
    #     doc = Nokogiri::HTML(open("https://www.capbridge.com/explore/"))

    #     attraction = self.new
    #     attraction.name = doc.css("#menu-item-424").text.upcase #scrapes susp bridge title
    #     suspbridge_doc = Nokogiri::HTML(open("https://www.capbridge.com/explore/capilano-suspension-bridge/"))
    #     attraction.description = suspbridge_doc.css("p").children[1].text
    #     attraction
    # end

    # def self.scrape_cliffwalk
    #     doc = Nokogiri::HTML(open("https://www.capbridge.com/explore/"))

    #     attraction = self.new
    #     attraction.name = doc.css("#menu-item-425").text.upcase
    #     cliffwalk_doc = Nokogiri::HTML(open("https://www.capbridge.com/explore/cliffwalk/"))
    #     attraction.description = cliffwalk_doc.css("p").children[1].text
    #     attraction
    # end

    # def self.scrape_treetops
    #     doc = Nokogiri::HTML(open("https://www.capbridge.com/explore/"))

    #     attraction = self.new
    #     attraction.name = doc.css("#menu-item-430").text.upcase
    #     treetops_doc = Nokogiri::HTML(open("https://www.capbridge.com/explore/treetops-adventure/"))
    #     attraction.description = treetops_doc.css("p").children[1..3].text
    #     attraction
    # end

    # def self.scrape_storycentre
    #     doc = Nokogiri::HTML(open("https://www.capbridge.com/explore/"))

    #     attraction = self.new
    #     attraction.name = doc.css("#menu-item-429").text.upcase
    #     storycentre_doc = Nokogiri::HTML(open("https://www.capbridge.com/explore/story-centre/"))
    #     attraction.description = storycentre_doc.css("p").children[1].text
    #     attraction
    # end

    # def self.scrape_kiapalano
    #     doc = Nokogiri::HTML(open("https://www.capbridge.com/explore/"))

    #     attraction = self.new
    #     attraction.name = doc.css("#menu-item-427").text.upcase
    #     kiapalano_doc = Nokogiri::HTML(open("https://www.capbridge.com/explore/kiapalano/"))
    #     attraction.description = kiapalano_doc.css("p").children[1].text
    #     attraction
    # end

    # def self.scrape_attractions
    #     attractions = []
    #     doc = Nokogiri::HTML(open("https://www.capbridge.com/explore/"))
    #     list_att = doc.css(".col-has-text")

    #     list_att.each do |item|
    #         attraction = self.new
    #         attraction.name = item.css(".inner-text-title").text.strip
    #         attraction.description = item.css(".inner-text-hover-content").text
    #     end
    #     attractions << attraction
    # end

    # def self.

    # def self.scrape_raptors
    #     doc = Nokogiri::HTML(open("https://www.capbridge.com/explore/"))

    #     attraction = self.new
    #     attraction.name = doc.css(".inner-text-hover-content h3").children[7].text
    #     raptors_doc = Nokogiri::HTML(open("https://www.capbridge.com/explore/"))
    #     attraction.description = raptors_doc.css(".inner-text-hover p").children[16].text.strip
    #     attraction
    # end

    # def self.scrape_tours
    #     doc = Nokogiri::HTML(open("https://www.capbridge.com/explore/"))

    #     attraction = self.new
    #     attraction.name = doc.css("#menu-item-426").text.upcase
    #     tours_doc = Nokogiri::HTML(open("https://www.capbridge.com/explore/guided-tours/"))
    #     attraction.description = tours_doc.css("p").children[1..2].text
    #     attraction
    # end

    # def self.scrape_forest
    #     doc = Nokogiri::HTML(open("https://www.capbridge.com/explore/"))

    #     attraction = self.new
    #     attraction.name = doc.css("#menu-item-428").text.upcase
    #     forest_doc = Nokogiri::HTML(open("https://www.capbridge.com/explore/living-forest/"))
    #     attraction.description = forest_doc.css("p").children[0].text
    #     attraction
    # end

    # def self.scrape_kids
    #     doc = Nokogiri::HTML(open("https://www.capbridge.com/explore/"))

    #     attraction = self.new
    #     attraction.name = doc.css("#menu-item-423").text.upcase
    #     kids_doc = Nokogiri::HTML(open("https://www.capbridge.com/explore/capilano-kids/"))
    #     attraction.description = kids_doc.css("p").children[0..9].text
    #     attraction
    # end

    # def self.scrape_lights
    #     doc = Nokogiri::HTML(open("https://www.capbridge.com/explore/"))

    #     attraction = self.new
    #     attraction.name = doc.css("#menu-item-422").text.upcase
    #     lights_doc = Nokogiri::HTML(open("https://www.capbridge.com/explore/canyon-lights/"))
    #     attraction.description = lights_doc.css("p").children[1..3].text
    #     attraction
    # end
end
