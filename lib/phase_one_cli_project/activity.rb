class Activity

    attr_accessor :activity, :type, :participants, :price 

    @@all = []

    def initialize (activity_hash)
        activity_hash.each do |key, value|
            self.send("#{key}=", value) if self.respond_to?("#{key}=")
        end
      save
    end

    def save 
        @@all << self
    end

    def self.all
        @@all
    end

end
