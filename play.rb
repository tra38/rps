def play
puts "Let's Play Rock, Paper, Scissors!"
player = gets.chomp.downcase.to_s
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
