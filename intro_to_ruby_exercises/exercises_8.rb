## Intro to Programming: Summary Exercises

#1
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arr.map {|number| puts number}

#2
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arr.each do |number|
  if number > 5
    puts number
  end
end

#3
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
new_arr = arr.select {|number| (number % 2 != 0)}
p new_arr

#4
arr << 11
arr.unshift(0)

#5
arr.pop
arr.push(3)

#6
arr.uniq

#7
A hash is consisted of key-value pairs, a list is not.

#8
#new, after Ruby 2.0
me = {hair:"black", eyes: "brown", ethnicity: "asian"}
#old
me = {:hair => "black", :eyes => "brown", :ethnicity => "asian"}

#9
h = {a:1, b:2, c:3, d:4}

1. h[:b]
2. h[:e] = 5
3. h.delete_if {|key, value| value > 3.5} #delete_if {|key, value| block}

#10
Yes, hash values can be arrays. Yes, you can also have an array of hashes.
h = {hairs:["black", "blonde", "brown", "red"]}
arr = [{hair:"black"}, {hair: "brown"}]

#11
Rails/Ruby online API sources
Recommended on Quora: Sinatra, "It's very clean and shouldn't be too bad to dive into."
https://www.netguru.co/blog/most-loved-ruby-on-rails-open-source

#12 Given the following data structures. 
# Write a program that moves the information from the array into the empty hash that applies to the correct person.
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
contacts =  {"Joe Smith" => {}, "Sally Johnson" => {}}

# my solution 
contacts["Joe Smith"] = contact_data[0]
contacts["Sally Johnson"] = contact_data[1]

# => contacts = {"Joe Smith" => ["joe@email.com", "123 Main st.", "555-123-4567"], "Sally Johnson" => ["sally@email.com", "404 Not Found Dr.", "123-234-3454]}

# In order to return {"Joe Smith" => {}, "Sally Johnson" => {}}, create new keys, then add the key-value pairs to the empty hash
contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone] = contact_data[0][2]
contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone] = contact_data[1][2]


#13
# Joe's email:
contacts["Joe Smith"][:email]

# Sally's phone #:
contacts["Sally Johnson"][:phone]


#14
contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}
keys = [:email, :address, :phone]

contacts.each do |name, hash|
  keys.each do |key|
    hash[key] = contact_data.shift
  end
end

#15
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
arr.delete_if {|string| string =~ /s/}
# or arr.delete_if{|string| string.start_with?("s")}
arr.delete_if {|string| string =~ /[sw]/}
# or arr.delete_if {|string| string.start_with?("s", "w")}

#16
a = ['white snow', 'winter wonderland', 'melting ice', 'slippery sidewalk', 'salted roads', 'white trees']
a.map {|string| string.split(" ")}.flatten
# [["white", "snow"], ["winter", "wonderland"], ["melting", "ice"], ["slippery", "sidewalk"], ["salted", "roads"], ["white", "trees"]]

#17
hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}
if hash1 == hash2
  puts "These hashes are the same!"
else
  puts "These hashes are not the same!"
end


=> These hashes are the same!
  



