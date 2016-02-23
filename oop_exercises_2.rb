#Object Oriented Programming with Ruby Exercises: Classes & Objects Part II

#1. Add a class method to your MyCar class that calculates the gas mileage of any car.


class MyCar
  def self.total_mileage(miles, gallons)
    puts "You car has run #{miles}, used up #{gallons} of gas"
  end
end

MyCar.total_mileage(50, 2)

#2 Override the to_s method to create a user friendly print out of your object.

class MyCar
  def to_s
    "This is a #{year}, #{color}, #{model}"
  end
end


#3
The error is at the accessor method is set to attr_reader, which does not allow change, set it back to
attr_accessor




