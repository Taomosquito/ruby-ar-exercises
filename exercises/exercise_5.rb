require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
# merely so something exists for calculation purposes
total_revenue = Store.sum(:annual_revenue)
puts "Total Revenue: #{total_revenue}"
average_annual_revenue = Store.average(:annual_revenue)
puts "Total Revenue: #{average_annual_revenue}"
@over1MillRevenue = Store.where("annual_revenue > ?", 1000000)
puts "Amount of stores generating more than $1M annually: #{@over1MillRevenue.count}"