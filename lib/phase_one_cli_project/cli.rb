class CLI   

    def start
        puts "Welcome! We're so glad you made it. What should we call you? (Please enter your name)"
        API.get_data
        input = user_input
        greeting(input)

    end

    def user_input
        gets.strip
    end

    def greeting(name)
        puts "Nice to meet you, #{name}! You must be bored. Let's fix that! Enter 'y' to get assigned an random, fun activity, or 'exit' to close our session."
        menu
    end

    def menu
        choice = user_input
        if choice == "y"
            print_random_activity
        elsif choice == "exit"
            exit_message
        else
            error_message 
        end
    end

    def print_random_activity
        Activity.all.each do |random_activity|
            puts "#{random_activity.activity}"   #NEEDS TO BE WAY PRETTIER
        end
        see_more
    end

    def see_more
        puts "Would you like to learn more about this activity and what it requires? Enter 'y' for yes, 'n' to see a different option, or 'exit' to end our session."
        choice = user_input
        if choice == "y"
            activity_details
        elsif "n"
            print_random_activity
        elsif "exit"
            exit_message
        else
            error_message
        end
    end

    def activity_details
        #:activity, :type, :participants, :price 
        #puts "Activity: #
    end



    def error_message
        puts "I don't recognize that entry. To continue, please enter a valid selection."
        menu
    end

    def exit_message
        puts "I hope you found something fun to do! See you again soon!"
    end
    
end