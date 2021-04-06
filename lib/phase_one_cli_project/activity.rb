class Activity

    attr_accessor :activity, :type, :price

    @@all = []

    def initialize(activity, type, price)
        @activity = activity
        @type = type
        @price = price
        save
    end

    def save 
        @@all << self
    end
    
end
