## # Intro to Programming: Flow Control Exercises

#1
1. false
2. false
3. false
4. true
5. true

#2
def caps(string)

  if string.length > 10
    string.upcase
  else
    string
  end
end

puts caps("hello world")

#3
puts "Write down a number between 0 and 100"
number = gets.chomp.to_i

if number < 50 && number > 0
  puts "Your number is btw 0 and 50"
elsif number < 100 && number > 51
  puts "Your number is btw 51 and 100"
else number > 100
  puts "Your number is greater than 100"
end


#4
1. FALSE 
2. "Did you get it right?"
3. "Alright now!"

#5
def number_range(number) 
  case 
  when number < 0
    puts "You cannot put in a negative number"
  when number <= 50
    puts "Your number is btw 0 and 50"
  when number <= 100
    puts "Your number is btw 51 and 100"
  else
    puts "Your number is out of the range"
  end
end

puts "Write down a number between 0 and 100"
number = gets.chomp.to_i

number_range(98)

#6
The code lacks an end for the if statement





