# Michael Dere
# Updated since 

# Requirements:
# 1. Program must tell the user that it is thinking of a number between 1 and 10. 
# 2. User given 5 chances.
# 3. If guess is too low, then print “Too low!”
# 4. guess too high, then print “Too high!”
# 5. Correct → “NAILED IT!!!”.
# 6. Program tells you the number then Exits immediately. 
# 7. After 5 guesses you lose "You lose! I win! Womp womp!"

# Stretch Goals
# 1. Allow user specify number of guesses
# 2. min or max number
# 3. Give rescue/begin case
# 4. Ask user to play again. → yes “Horray!” or no “Aw, shucks…”

puts "Do you want override total guesses in this game?"
prompt_guess = $stdin.gets.chomp.downcase
if prompt_guess == "y" || prompt_guess == "yes"
  puts "How many guesses do you want?"
  total_guesses = $stdin.gets.chomp
  puts "You chose #{total_guesses} guesses!"
else
  total_guesses = 5
  puts "defaulted guesses is #{total_guesses}"
end

puts "Lower threshold?"
min = $stdin.gets.chomp
puts "You set lower threshold to be #{min}"

max_is_set = false
while !max_is_set
  puts "Upper threshold?"
  max = $stdin.gets.chomp  
  if max <= min
    puts "You may not do that, choose a number higher than #{min}" 
  else
    puts "You set upper threshold to be #{max}"
    max_is_set = true
  end
end