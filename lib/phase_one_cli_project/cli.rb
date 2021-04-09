class CLI   

    def start
        puts "-------------------------------------------------------------------------------------"
        puts "Welcome! We're so glad you made it. What should we call you? (Please enter your name)"
        puts "-------------------------------------------------------------------------------------"
        API.get_data
        input = user_input
        greeting(input)

    end

    def user_input
        gets.strip
    end

    def greeting(name)
        puts "-----------------------------------------------------------------------------------------------------------------------------------------------"
        puts "Nice to meet you, #{name}! You must be bored. Let's fix that! Enter 'y' to get assigned a random, fun activity, or 'exit' to close our session."
        puts "-----------------------------------------------------------------------------------------------------------------------------------------------"
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
            puts "----------------------------------------"
            puts "#{random_activity.activity}"   
            puts "----------------------------------------"
        end
        see_more
    end

    def see_more
        puts "------------------------------------------------------------------------------------------------------------------------------------------------------"
        puts "Would you like to learn more about this activity and what it requires? Enter 'y' for yes, 'n' to see a different option, or 'exit' to end our session."
        puts "------------------------------------------------------------------------------------------------------------------------------------------------------"
        choice = user_input
        if choice == "y"
            activity_details
        elsif choice == "n"
            print_random_activity       # CURRENTLY JUST PRINTS SAME ACTIVITY
        elsif choice == "exit"
            exit_message                
        else
            error_message            
        end
    end

    def activity_details
        Activity.all.each do |random_activity| 
            puts "---------------------------------------------"
            puts "Activity: #{random_activity.activity}"
            puts "-------------------------------------"
            puts "Type: #{random_activity.type}"
            puts "-------------------------------------"
            puts "Participants: #{random_activity.participants}"
            puts "---------------------------------------------"
            puts "Cost: $#{random_activity.price}" #FORMAT THIS SO IT LOOKS LIKE A REAL COST
            puts "-------------------------------"
        end
        puts "-----------------------------------------------------------------------------------------------------------------------------------------------"
        puts "If this looks good, enter 'exit' to get out there and get started! Otherwise, enter 'menu' to return to the main menu and make a new selection."
        puts "-----------------------------------------------------------------------------------------------------------------------------------------------"
        answer = user_input
        if answer == "exit"
            exit_message
        elsif answer == "menu"
            puts "------------------------------"
            puts "Enter 'y' to see a new option."
            puts "------------------------------"
            menu
        else
            error_message
        end
    end

    def error_message
        puts "--------------------------------------------------------------------------"
        puts "I don't recognize that entry. To continue, please enter a valid selection."
        puts "--------------------------------------------------------------------------"
        menu
    end

    def exit_message
        puts "---------------------------------------------------------"
        puts "I hope you found something fun to do! See you again soon!"
        puts "---------------------------------------------------------"
    end
    
end