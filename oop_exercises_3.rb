#Object Oriented Programming with Ruby Exercises: Classes & Objects Part II

#1 Create a superclass called Vehicle for your MyCar class to inherit from and move the behavior that isn't specific to the MyCar class to the superclass. 
# Create a constant in your MyCar class that stores information about the vehicle that makes it different from other types of Vehicles.
# Then create a new class called MyTruck that inherits from your superclass that also has a constant defined that separates it from the MyCar class in some way.

class Vehicle
  def self.total_mileage(miles, gallons)
    puts "Your car's mileage is #{miles/gallons} miles per gallon."
  end
end

  class MyCar < Vehicle
    CAR_SEATING = 5
  end


  class MyTruck < Vehicle
    TRUCK_SEATING = 2
  end


#2 Add a class variable to your superclass that can keep track of the number of objects created that inherit from the superclass. 
# Create a method to print out the value of this class variable as well.
class Vehicle
  @@n_vehicles_created = 0
  def self.objects_created
    puts "#{n_vehicles_created} vehicles created."
  end

  def initialize
    @@n_vehicles_created += 1
  end
end

#3 Create a module that you can mix in to ONE of your subclasses that describes a behavior unique to that subclass.

class Vehicle
  @@n_vehicles_created = 0
  module Haulable
    def haul_weight
    puts "I am good at hauling weight."
    end
  end

  def self.objects_created
    puts "#{n_vehicles_created} vehicles created."
  end

  def initialize
    @@n_vehicles_created += 1
  end

  def self.total_mileage(miles, gallons)
    puts "Your car's mileage is #{miles/gallons} miles per gallon."
  end
end

class MyCar < Vehicle
  CAR_SEATING = 5
end


class MyTruck < Vehicle
  include Haulable
  TRUCK_SEATING = 2
end

#4 Print to the screen your method lookup for the classes that you have created.

irb(main):032:0> MyCar.ancestors
=> [MyCar, Vehicle, Object, Kernel, BasicObject]

irb(main):033:0> MyTruck.ancestors
=> [MyTruck, Vehicle::Haulable, Vehicle, Object, Kernel, BasicObject]

irb(main):034:0> Vehicle.ancestors
=> [Vehicle, Object, Kernel, BasicObject]

#5 Move all of the methods from the MyCar class that also pertain to the MyTruck class into the Vehicle class. 
# Make sure that all of your previous method calls are working when you are finished.

module Haulable
    def haul_weight
    puts "I am good at hauling weight."
    end
end

class Vehicle
  @@n_vehicles_created = 0

  def self.objects_created
    puts "#{n_vehicles_created} vehicles created."
  end

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @current_speed = 0
    @@n_vehicles_created += 1
  end

  def self.total_mileage(miles, gallons)
    puts "Your car's mileage is #{miles/gallons} miles per gallon."
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

    def to_s
    "This is a #{year}, #{color}, #{model}"
  end
end

class MyCar
  attr_accessor :year, :color, :model
  CAR_SEATING = 5

    def initialize(year, color, model)
      @year = year
      @color = color
      @model = model
      @speed = 0
    end
end

class MyTruck < Vehicle
  include Haulable
  TRUCK_SEATING = 2
end


#6 Write a method called age that calls a private method to calculate the age of the vehicle. 
# Make sure the private method is not available from outside of the class. 
# You'll need to use Ruby's built-in Time class to help.
class Vehicle
  def age
    puts "Your vehicle is #{how_old} years old."

  private

  def how_old
    Time.now.year - self.year  ## this is calling a setter method, 
    ## so you must use self.foo, so Ruby knows you are not creating a local variable.
  end
# call
puts prius.age

#7 Create a class 'Student' with attributes name and grade. Do NOT make the grade getter public, so joe.grade will raise an error. 
# Create a better_grade_than? method, that you can call like so: puts "Well done!" if joe.better_grade_than?(bob)

class Student
attr_accessor :name, :grade
  def initialize(name, grade)
  @name = name
  @grade = grade
  end

  def better_grade_than?(name)
    if grade > name.grade
      puts "Well done!"
    end
  end

  protected

  def grade
    grade = @grade
  end
end

joe = Student.new("joe", "80")
bob = Student.new("bob", "100")
bob.better_grade_than?(joe) 
 




