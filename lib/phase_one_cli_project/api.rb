class API

    def self.get_data
        response = RestClient.get("http://www.boredapi.com/api/activity/")
        #binding.pry
        activity_hash = JSON.parse(response) #["activity"]
        activity_hash.each do |activity_name|
            Activity.new(activity_name)
            binding.pry
        end
    end

end
