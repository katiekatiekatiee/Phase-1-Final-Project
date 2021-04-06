class Activity

    attr_accessor :activity, :type, :price

    def initialize(activity, type, price)
        @activity = activity
        @type = type
        @price = price
    end
end
