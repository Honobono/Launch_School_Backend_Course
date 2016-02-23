## Intro to Programming: More Stuff Exercises

#1
def check_lab(string)
  if string =~ /lab/
    puts string
  else
    puts "'lab' is not in #{string}"
  end
end
check_lab("experiment")
check_lab("Pans Labyrinth")
check_lab("elaborate")
check_lab("polar bear")


#2
#<Proc:0x007f858a0623b0@(irb):31>, the block is not called

#3
rescue, it separates and executes the code that is good, and prints out an error message of the bad code.

#4
def execute(&block)
  block.call
end

execute do 
  puts "Block is being called in this method!" 
  
end

#5
missing an "&" in the parameter


