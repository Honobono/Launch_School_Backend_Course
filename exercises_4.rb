## Intro to Programming: Loops & Iterators Exercises


#1
x = [1, 2, 3, 4, 5]
x.each do |a|
  a + 1   ## this is not saved nor printed out, Ruby returns value after each line is executed
end

=> [1,2,3,4,5] 


#2
answer = ""
while answer != "stop" do
  puts "Tell me something about yourself"
  answer = gets.chomp

end


#3
arr = ['alice','alex','abby','ashley']
arr.each_with_index do |name, index|
  puts "#{index} #{name}"
end

#4
def countdown(n)
  puts n
  countdown(n-1)
end
