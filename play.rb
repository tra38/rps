def play
puts "Let's Play Rock, Paper, Scissors! To play, pick one of those three options."
player = gets.chomp.downcase.to_s
if player == ("lizard") || player == ("spock")
	raise ArgumentError.new("The computer thinks you're a nerd and refuses to play.")
end
if player != ("rock") && player != ("paper") && player != ("scissors")
	raise ArgumentError.new("The only input allowed is Rock, Paper, or Scissors.")
end
computer = ["Rock","Paper","Scissors"].sample.chomp.downcase
puts "The player has chosen #{player}."
puts "The computer responds with #{computer}!"
if player == computer
	puts "It's a tie!"
	return
else
  case player
    when "rock"
      if computer == "paper"
        puts "Computer wins!"
      else puts "Player win!"
    end
    when "paper"
      if computer == "scissors"
        puts "Computer wins!"
      else "Player wins!"
    end
  when "scissors"
    if computer == "rock"
      puts "Computer wins!"
    else "Player wins!"
    end
  end
end
end
