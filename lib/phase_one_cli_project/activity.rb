class Activity

    attr_accessor :activity, :type, :participants, :price 

    @@all = []

    def initialize (activity_hash)
        # @activity = activity
        # @type = type
        # @participants = participants
        # @price = price
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

    def self.find_by_selection(activity_name)
        self.all.detect do |activty_description| 
            activity_description.activity == activity_name
            binding.pry
        end
    end


end
