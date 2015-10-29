#Lauren Herdman
#Object Orientated Programming
#Mars Rover

class Rover
  attr_accessor :x_location, :y_location, :direction, :name #writes out getter and setter for me for all these variables

  def initialize(x_location, y_location, direction, name) #initializes the class Rover
    @x_location = x_location
    @y_location = y_location
    @direction = direction
    @name = name
  end

  def location #displays where the rover's location is
    puts "#{@name} is located at #{@x_location}, #{@y_location} facing #{@direction}."
  end

  def turn(new_direction) #changes which direction the rover is facing
    if @direction == "N"
    	if new_direction == "L"
      	@direction = "W"
      elsif new_direction == "R"
      	@direction="E"
      else
      	puts "Not a valid input"
      end
    elsif @direction == "S"
      if new_direction == "L"
      	@direction = "E"
      elsif new_direction =="R"
      	@direction = "W"
      else
      	puts "Not a valid input"
      end
    elsif @direction == "E"
      if new_direction == "L"
      	@direction = "N"
      elsif new_direction == "R"
      	@direction = "S"
      else
      	"Not a valid input"
      end
    elsif @direction == "W"
      if new_direction == "L"
      	@direction = "S"
      elsif new_direction == "R"
      	@direction = "N"
      else
      	"Not a valid input"
      end
    else
      puts "Not a valid input" #stops the input from not being a direction
    end
  end

  def move #moves the rover forward by 1 whatever direction it is facing
    if @direction == "N"
      @y_location += 1
    elsif @direction == "S"
      @y_location -= 1
    elsif @direction == "E"
      @x_location += 1
    elsif @direction == "W"
      @x_location -= 1
    else
      puts "Not a valid input"
    end
  end

  def read_instruction(input)
  	if input == "L" || input == "R"
  		turn(input)
  	elsif input == "M"
  		move
  	else
  		puts "Not a valid input"
  	end
  end
end

class Plateau
	def initialize(x_size, y_size)
		@x_size = x_size
		@y_size = y_size
	end

	def print
		puts "The plateau is #{@x_size} by #{@y_size}"
	end
end

plateau1 = Plateau.new(5, 5)
plateau1.print

rover1 = Rover.new(9, 9, "N", "Rover 1")
rover2 = Rover.new(2, 7, "E", "Rover 2")

rover1.location
rover2.location
rover1.read_instruction("L")
rover2.read_instruction("R")
rover1.location
rover2.location
rover1.read_instruction("M")
rover2.read_instruction("M")
rover1.location
rover2.location