class API

    def self.get_data
        response = RestClient.get("http://www.boredapi.com/api/activity/")
        #binding.pry
        
    end

end
