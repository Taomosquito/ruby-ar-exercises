require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...
def change_store_name(store_id, new_name)
  store = Store.find(store_id) # Find the store by ID
  store.update(name: new_name)  # Update the name and save it
end

change_store_name(1, "Vancouver")