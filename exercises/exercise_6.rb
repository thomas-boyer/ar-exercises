require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Kyle", last_name: "Maclachlan", hourly_rate: 100)
@store1.employees.create(first_name: "Cate", last_name: "Blanchett", hourly_rate: 120)

@store2.employees.create(first_name: "Julianne", last_name: "Moore", hourly_rate: 70)
@store2.employees.create(first_name: "Isabelle", last_name: "Huppert", hourly_rate: 50)
@store2.employees.create(first_name: "Nicolas", last_name: "Cage", hourly_rate: 50)