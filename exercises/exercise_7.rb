require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...

puts "Please type the name of the store you want to look up."
name = gets.chomp

error_store = Store.create(name: name)
error_store.errors.messages.each do |error|
  puts error
end
