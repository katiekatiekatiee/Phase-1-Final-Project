class CLI   

    def start
        puts "Welcome! We're so glad you made it. What should we call you? (Please enter your name)"
        input = user_input
        greeting(input)

    end

    def user_input
        gets.strip
    end

    def greeting(name)
        puts "Nice to meet you, #{name}! Let's find out what we're going to do today! Enter 'y' to get some ideas, or 'exit' to close our session."
        #input = user_input
    end





end