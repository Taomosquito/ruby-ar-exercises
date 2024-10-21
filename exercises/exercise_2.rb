require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...
@store1 = Store.find(1)
@store2 = Store.find(2)

def change_store_name(store_id, new_name)
  store = Store.find(store_id)
  store.update(name: new_name)
end

change_store_name(1, "Vancouver")