## Intro to Programming: Arrays Exercises

#1
arr = [1,3,5,7,9,11]
number = 3

if arr.include?(number)
  puts "#{number} is in the array."
end
=> true


#2
1. returns 1, arr is modified to [["b"], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]]
2. returns [1,2,3], arr is modified to [["b"], ["a", [1, 2, 3]]]

#3
arr.last.first

#4
1. 3   array.index(value)
2. error  array.index[5] not valid method
3, 8  array[index]


#5
a = 'e'
b = 'A'
c = out of index or "nil"

#6
names['margaret'] should have index number instead of value
names[3] = 'jody'


#7
arr = [2,4,6]
new_arr = []
arr.each do |n|
  new_arr.push(n+2)
p arr
p new_arr


