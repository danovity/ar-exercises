require_relative "../setup"
require_relative "./exercise_1"
require_relative "./exercise_2"
require_relative "./exercise_3"
require_relative "./exercise_4"
require_relative "./exercise_5"

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)

@store1.employees.create(first_name: "Kyla", last_name: "Palos", hourly_rate: 30)

@store2.employees.create(first_name: "Joyner", last_name: "Lucas", hourly_rate: 25)

@store2.employees.create(first_name: "Paul", last_name: "Rosenberg", hourly_rate: 45)

@store4.employees.create(first_name: "Good", last_name: "Guy", hourly_rate: 15)

@store5.employees.create(first_name: "The", last_name: "Ringer", hourly_rate: 76)

pp Employee.all
