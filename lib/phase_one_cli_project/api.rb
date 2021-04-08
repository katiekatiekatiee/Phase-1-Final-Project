class API

    def self.get_data
        response = RestClient.get("http://www.boredapi.com/api/activity/")
        activity = JSON.parse(response)  
        Activity.new(activity)
    end
    
end
