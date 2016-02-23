#Object Oriented Programming with Ruby Exercises: Classes & Objects Part I

#1
# Create a class called MyCar. When you initialize a new instance or object of the class, allow the user to define some instance variables that tell us the year, color, and model of the car. Create an instance variable that is set to 0 during instantiation of the object to track the current speed of the car as well. Create instance methods that allow the car to speed up, brake, and shut the car off.
class MyCar
  attr_accessor :year, :color, :model

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @speed = 0
  end

  def current_speed
    puts "you are now at #{@speed} mph."
  end

  def speed_up(s)
    @speed += s
    puts "The car is speeding up to #{s} mph."
  end

  def brake(s)
    @speed -= s
    puts "The brake is on, the car is speeding down to #{s} mph."
  end

  def off
    @speed = 0
    puts "The car is shut down."
  end
end

# Calling the method
prius = MyCar.new(2010, 'white', 'toyota prius')
prius.current_speed
prius.speed_up(10)
prius.brake(10)
prius.off



#2
# Add an accessor method to your MyCar class to change and view the color of your car. Then add an accessor method that allows you to view, but not modify, the year of your car.
class MyCar
  attr_accessor :color, :model
  attr_reader :year

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @speed = 0
  end

  def show_color
    self.color = @color
    puts "The car is #{@color}"
  end

  def change_color(new_color)
    self.color = new_color
    puts "The car's color is changed to #{new_color}"
  end

  def show_year
    self.year = @year
    puts "The car's year is #{@year}"
  end
end

prius.show_color
prius.change_color("black")
prius.show_year

# Launch School Solution: attr_accessor :color, :model 
# attr_reader :year
# prius.color, prius.year 

#3
# You want to create a nice interface that allows you to accurately describe the action you want your program to perform. Create a method called spray_paint that can be called on an object and will modify the color of the car.

  def spray_paint(new_color)
    self.color = new_color
    puts "Your car is sprayed with a new #{new_color} paint."
  end

  prius.spray_paint("blue")


