class Activity

    attr_accessor :activity, :type, :participants, :price 

    @@all = []

    def initialize(activity, type, price, participants)
        @activity = activity
        @type = type
        @participants = participants
        @price = price
        save
    end

    def save 
        @@all << self
    end

    def self.all
        @@all
    end



end
