# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Person.destroy_all #limpiamos la tabla Persons or People

(1..10).each do
 Person.create! [
    { first_name: Faker::Name.first_name,
      last_name:Faker::Name.last_name ,
      age:Faker::Number.number(2),
      login: Faker::Internet.user_name,
      pass:Faker::Internet.password(8)
    }
                ]
end
# Person.create! [
 # { first_name: "Kalman", last_name: "Smith", age:23 },
 # { first_name: "John", last_name: "Whatever", age:27 },
 # { first_name: "Michael", last_name: "Smith", age:15 },
 # { first_name: "Josh", last_name: "Oreck", age:57 },
 # { first_name: "Jorn", last_name: "Smith", age:27 },
 # { first_name: "Bill", last_name: "Gaes", age:75 },
 # { first_name: "LeBron", last_name: "James", age:30 },
 # { first_name: "John", last_name: "Connors", age:33 },
 # { first_name: "John", last_name: "Doe", age:35 },
 # { first_name: Faker::Name.firt_name, last_name:Faker::Name.last_name , age:Faker::Number.number(2)}
# ]