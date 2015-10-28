#Lauren Herdman
#Object Orientated Programming
#People

class Person 
	# def initialize 
	# 	@name = str
	# end

 #  def name=(str)
 #    @name = str
 #  end

 def initialize(name)
  @name = name
 end

 def introduction
  puts "Hi, my name is #{@name}"
 end

end

class Student < Person
	def learn
		puts "I get it!"
	end
end

class Instructor < Person
	def teach
		puts "Everything in Ruby is an Object"
	end
end

christina = Student.new("Christina")
# student.name = "Lauren"

chris = Instructor.new("Chris")
# instructor.name = "Steve"

chris.introduction
christina.introduction

Instructor.teach
Student.learn



