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
        attractions << self.scrape_treetops
        attractions << self.scrape_storycentre
        attractions << self.scrape_kiapalano
        attractions << self.scrape_raptors

        attractions
    end

    def self.scrape_suspbridge
        doc = Nokogiri::HTML(open("https://www.capbridge.com/explore/"))

        attraction = self.new
        attraction.name = doc.css("#menu-item-424").text #scrapes susp bridge title
        suspbridge_doc = Nokogiri::HTML(open("https://www.capbridge.com/explore/capilano-suspension-bridge/"))
        attraction.description = suspbridge_doc.css("p").children[1].text
        attraction
    end

    def self.scrape_cliffwalk
        doc = Nokogiri::HTML(open("https://www.capbridge.com/explore/"))

        attraction = self.new
        attraction.name = doc.css("#menu-item-425").text
        cliffwalk_doc = Nokogiri::HTML(open("https://www.capbridge.com/explore/cliffwalk/"))
        attraction.description = cliffwalk_doc.css("p").children[1].text
        attraction
    end

    def self.scrape_treetops
        doc = Nokogiri::HTML(open("https://www.capbridge.com/explore/"))

        attraction = self.new
        attraction.name = doc.css("#menu-item-430").text
        treetops_doc = Nokogiri::HTML(open("https://www.capbridge.com/explore/treetops-adventure/"))
        attraction.description = treetops_doc.css("p").children[1..3].text
        attraction
    end

    def self.scrape_storycentre
        doc = Nokogiri::HTML(open("https://www.capbridge.com/explore/"))

        attraction = self.new
        attraction.name = doc.css("#menu-item-429").text
        storycentre_doc = Nokogiri::HTML(open("https://www.capbridge.com/explore/story-centre/"))
        attraction.description = storycentre_doc.css("p").children[1].text
        attraction
    end

    def self.scrape_kiapalano
        doc = Nokogiri::HTML(open("https://www.capbridge.com/explore/"))

        attraction = self.new
        attraction.name = doc.css("#menu-item-427").text
        kiapalano_doc = Nokogiri::HTML(open("https://www.capbridge.com/explore/kiapalano/"))
        attraction.description = kiapalano_doc.css("p").children[1].text
        attraction
    end

    def self.scrape_raptors
        doc = Nokogiri::HTML(open("https://www.capbridge.com/explore/"))

        attraction = self.new
        attraction.name = doc.css(".inner-text-hover-content h3").children[7].text
        raptors_doc = Nokogiri::HTML(open("https://www.capbridge.com/explore/"))
        attraction.description = raptors_doc.css(".inner-text-hover p").children[16].text.strip
        attraction
    end

end