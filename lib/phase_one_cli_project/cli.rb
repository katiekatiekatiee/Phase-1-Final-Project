class CLI   

    def start
        puts 
        puts "Welcome! We're so glad you made it. What should we call you? (Please enter your name)".colorize(:green)
        puts 
        API.get_data
        input = user_input
        greeting(input)

    end

    def user_input
        gets.strip
    end

    def greeting(name)
        if name == "exit"
            exit_message
        else
            puts 
            puts "Nice to meet you, #{name.capitalize}! You must be bored. Let's fix that! Enter 'y' to get assigned a random, fun activity, or 'exit' to close our session.".colorize(:green)
            puts 
            menu
        end
    end

    def menu
        choice = user_input
        if choice == "y"
            print_random_activity
        elsif choice == "exit" || choice == "n"
            exit_message
        else
            error_message 
        end
    end

    def print_random_activity
        Activity.all.each do |random_activity|
            puts 
            puts "#{random_activity.activity}".colorize(:blue)   
            puts 
        end
        see_more
    end

    def see_more
        puts 
        puts "Would you like to learn more about this activity and what it requires?".colorize(:green)
        puts "Enter ‘y’ for yes, enter ‘n’ to see a new activity, or enter ‘exit’ to end the session.".colorize(:green)
        puts
        choice = user_input
        if choice == "y"
            activity_details
        elsif choice == "n"
            Activity.all.clear
            API.get_data
            print_random_activity       
        elsif choice == "exit"
            exit_message                
        else
            error_message            
        end
    end

    def activity_details
        Activity.all.each do |random_activity| 
            puts "---------------------------------------------"
            puts "Activity: #{random_activity.activity}".colorize(:blue)
            puts "---------------------------------------------"
            puts "Type: #{random_activity.type}".colorize(:blue)
            puts "---------------------------------------------"
            puts "Participants: #{random_activity.participants}".colorize(:blue)
            puts "---------------------------------------------"
            puts "Cost: $#{random_activity.price}".colorize(:blue) 
            puts "---------------------------------------------"
        end
        puts 
        puts "If this looks good, enter 'exit' to get out there and get started! Otherwise, enter 'menu' to return to the main menu and make a new selection.".colorize(:green)
        puts 
        answer = user_input
        if answer == "exit"
            exit_message
        elsif answer == "menu"
            puts 
            puts "Enter 'y' to review this idea and check out other options.".colorize(:green)
            puts 
            menu
        else
            error_message
        end
    end

    def error_message
        puts 
        puts "I don't recognize that entry. To continue, please enter a valid selection.".colorize(:red)
        puts 
        menu
    end

    def exit_message
        puts 
        puts "I hope you found something fun to do! See you again soon!".colorize(:green)
        puts 
    end
    
end