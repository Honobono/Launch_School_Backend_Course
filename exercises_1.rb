# Intro to Programming: Variables Exercises

#1
puts "What is your name?"
name = gets.chomp
puts "Hi there, " + name  

#2
puts "How old are you? Reply in numbers"
age = gets.chomp  ## to improve, age = gets.chomp.to_i
puts "In 10 years you will be: "
puts age.to_i + 10
puts "In 20 years you will be: "
puts age.to_i + 20
puts "In 30 years you will be: "
puts age.to_i + 30
puts "In 40 years you will be: "
puts age.to_i + 40

#3
#1 continued
10.times do  
  puts name
end

#4
puts "What is your first name?"
first_name = gets.chomp
puts "What is your last name?"
last_name = gets.chomp
puts first_name + " " + last_name

#5
x = 3
x is out of variable scope, undefined variable error

#6
'shoes' is outside of the variable scope