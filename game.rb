class GuessingGame 
    puts "hello, what is your name?"

    name = gets.chomp
    puts "hello #{name}, it's nice to meet you. Let's play a game."

    puts "This is a game called pick a number"
    puts "First, we need to set the range..."
    puts "Something like pick a number between 1 and 10..."
    puts "Choose the lowest possible #"

    lowest= gets.to_i
    puts "Now, choose the highest possible #"
    highest= gets.to_i

    num= rand(lowest..highest)

    puts "Guess a number between #{lowest} and #{highest}?"

    puts "Please guess again"
    guess = gets.to_i

    while guess != num
        count = 0 
        if guess > num
            puts "That's too high. Guess again:"
            guess = gets.to_i
        elsif guess < num
            puts "That's too low. Guess again:"
            guess = gets.to_i
        else 
            break
        end
        count += 1
    end

    puts "Yes! My number is #{num}"

end
