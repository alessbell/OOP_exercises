class Person
	attr_reader :name 

	def initialize(name)
		@name = name
	end

	def to_s
		"Hi, my name is #{@name}."
	end
end

class Student < Person
	def learn
		puts "I get it!"
	end
end

class Instructor < Person
	def teach
		puts "Everything in Ruby is an Object."
	end
end

Instructor1 = Instructor.new("Chris")
Student1 = Student.new("Cristina")

puts Instructor1.teach
puts Student1.learn

puts Instructor1.learn
puts Student1.teach

# calling learn on Instructor1 and teach on Student1 doesn't work because
# an undefined method error is returned due to methods being in different
# classes/those classes not inheriting from each other