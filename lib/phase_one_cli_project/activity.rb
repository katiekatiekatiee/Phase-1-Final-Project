class Activity

    attr_accessor :activity, :type, :price, :participants

    @@all = []

    def initialize(activity, type, price, participants)
        @activity = activity
        @type = type
        @price = price
        @participants = participants
        save
    end

    def save 
        @@all << self
    end

    def self.all
        @@all
    end

    

end
