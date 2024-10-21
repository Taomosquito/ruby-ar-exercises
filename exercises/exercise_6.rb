require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Mohammed", last_name: "Smith", hourly_rate: 60)
@store1.employees.create(first_name: "Andy", last_name: "Anderson", hourly_rate: 60)
@store1.employees.create(first_name: "Ted", last_name: "Mosby", hourly_rate: 60)
@store1.employees.create(first_name: "Barney", last_name: "Stinson", hourly_rate: 60)
@store2.employees.create(first_name: "Robin", last_name: "Sherbotsky", hourly_rate: 60)
@store2.employees.create(first_name: "Marge", last_name: "Simpson", hourly_rate: 60)
@store2.employees.create(first_name: "Homer", last_name: "Simpson", hourly_rate: 60)
@store2.employees.create(first_name: "Bart", last_name: "Simpson", hourly_rate: 60)
@store2.employees.create(first_name: "Lisa", last_name: "Simpson", hourly_rate: 60)
@store1.employees.create(first_name: "Eric", last_name: "Cartman", hourly_rate: 60)
@store2.employees.create(first_name: "Kenny", last_name: "Mccormic", hourly_rate: 60)
@store1.employees.create(first_name: "Kyle", last_name: "Broflovsky", hourly_rate: 60)
@store2.employees.create(first_name: "Stan", last_name: "Marsh", hourly_rate: 60)
@store1.employees.create(first_name: "Tolkien", last_name: "Black", hourly_rate: 60)

puts "Store 1 has the employees: #{@store1.employees}"
puts "Store 2 has the employees: #{@store2.employees}"