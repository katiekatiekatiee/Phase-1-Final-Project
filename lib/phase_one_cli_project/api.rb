class API

    def self.get_data
        response = RestClient.get(http://www.boredapi.com/api/activity/)
        activities_array = JSON.parse(response)

end
