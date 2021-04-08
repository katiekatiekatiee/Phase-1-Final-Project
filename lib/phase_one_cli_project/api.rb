class API

    def self.get_data
        response = RestClient.get("http://www.boredapi.com/api/activity/")
        #binding.pry
        activity = JSON.parse(response) #GIVES ME A HASH
        activity.each do |activity_name|
            Activity.new(activity_name[1]) #WITHOUT [1], HITS PRY, W/I PRY, ACTIVITY_NAME[1] GIVES THE ACTIVITY DESCRIPTION WHY DOESNT WORK HERE????
            binding.pry
        end
    end

end
