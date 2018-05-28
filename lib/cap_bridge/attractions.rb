class CapBridge::Attractions

    def self.all
        #should return all attractions
        puts <<-DOC.gsub /^\s*/,''
            1. Suspension Bridge
            2. Cliffwalk
            3. Treetops Adventure
        DOC
    end

end