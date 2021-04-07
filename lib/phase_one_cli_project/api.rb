class API

    def self.get_data
        response = RestClient.get("http://www.boredapi.com/api/activity/")
        #binding.pry
        activity_hash = JSON.parse(response)
        activity_hash.each do |activity|
            Activity.new(activity)
            #binding.pry
        end
    end

end
