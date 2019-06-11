require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'
require_relative './exercise_7'

test = Employee.create(first_name: "Testy", last_name: "McTesterson", hourly_rate: 100, store_id: 1)
puts test.password