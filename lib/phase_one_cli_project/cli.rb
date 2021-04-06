class CLI   

    def start
        puts "Welcome! We're so glad you made it. What should we call you? (Please enter your name)"
        API.get_data
        # input = user_input
        # greeting(input)

    end

    def user_input
        gets.strip
    end

    def greeting(name)
        puts "Nice to meet you, #{name}! You must be bored. Let's fix that! Enter 'y' to get assigned an random, fun activity, or 'exit' to close our session."
        input = user_input
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
    end

    def error_message
        puts "I don't recognize that entry. To continue, please enter a valid selection."
    end

    def exit_message
        puts "I hope you found something fun to do! See you again soon!"
    end

end