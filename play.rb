def play
@VictoryCheck = {"paper" => "rock", "rock" => "scissors", "scissors" => "paper"}
#Key = Move, Value = Move That the Key Can Defeat.
puts "Let's Play Rock, Paper, Scissors! To play, pick one of those three options."
player = gets.chomp.downcase.to_s
if player == ("lizard") || player == ("spock")
	raise ArgumentError.new("The computer thinks you're a nerd and refuses to play.")
end
if !@VictoryCheck.include?(player) #Check to see if that move in the VictoryCheck Hash. If it is, then that move is valid!
	raise ArgumentError.new("The only input allowed is Rock, Paper, or Scissors.")
end
computer = ["Rock","Paper","Scissors"].sample.chomp.downcase
puts "The player has chosen #{player}."
puts "The computer responds with #{computer}!"
if player == computer
	puts "It's a tie!"
elsif player == @VictoryCheck[computer] #We look up the Computer's move in the VictoryCheck Hash,
#and find its value. We then check to see if this value matches the Player's move. If it does, 
#then the Computer defeats the Player.
	puts "Computer wins!"
else
	puts "Player wins!"
end
end
