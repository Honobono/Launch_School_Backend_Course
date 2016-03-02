#Object Oriented Programming with Ruby Exercises: The Object Model

#1. How do we create an object in Ruby? Give an example of the creation of an object.

class CreateObject
end

new_object = CreateObject.new

#2. What is a module? What is its purpose? How do we use them with our classes? Create a module for the class you created in exercise 1 and include it properly.

A module is a collection of attributes and rules of certain actions. It is reuseable in different classes. 

module Demo
  def demo(object)
    puts object
  end
end

class CreateObject
  include Demo
end

CreateObject.new
CreateObject.demo
