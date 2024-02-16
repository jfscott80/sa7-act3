#script.rb
# Problem 2: Text-Based Game Score Tracker

total = 0
rooms = { 1=> 5, 2=> 10, 3=> 15 }

puts "Welcome to the Adventure Game!"
puts "You have 0 points."
print "Choose a room (1-3) to enter or 'exit' to end the game: "
choice = gets.chomp

until choice == 'exit'
    room_number = choice.to_i
    if rooms.key?(room_number)
        points = rooms[room_number]
        total += points
        puts "You entered Room #{room_number} and earned #{points} points."
        puts
        print "Choose a room (1-3) to enter or 'exit' to end the game: "
        choice = gets.chomp
    else
        puts "Invalid room number. Please choose a valid room (1-3)."
        choice = gets.chomp
    end

end
puts "Game over! You collected a total of #{total} points."