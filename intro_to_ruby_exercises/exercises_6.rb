## Intro to Programming: Hashes Exercises

#1
family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }
immediate_family = family.select do |key, value| 
  k == :sisters && k == :brothers
end

new_hash = immediate_family.values.flatten

p new_hash

#2
name = {name: "Bob"}
height = {height: "6.2 feet"}
puts name.merge(height)
puts name
puts height
puts name.merge!(height) 
puts name  ## array is modified to {:name => "Bob", :height => "6.2 feet"}
puts height

#3
person = {:name => "Bob", :height => "6.2 feet", :hair => "black"}
person.each_key {|key| puts key}
person.each_value {|value| puts value}
person.each {|key, value| puts "The key is #{key}, its value is #{value}"}

#4
person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}

person[:name]

#5


#7
irb(main):007:0> x = "hi there"
=> "hi there"
irb(main):008:0> hash_1 = {x: "some value"}
=> {:x=>"some value"}
irb(main):009:0> hash_2 = {x => "some value"}
=> {"hi there"=>"some value"}

#8
B