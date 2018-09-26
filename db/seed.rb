require_relative('../models/student')
require_relative('../models/house')
require('pry')
Student.delete_all()
House.delete_all()

house1 = House.new({
  "name" => "Gryffindor"
  })

  house1.save


  house2 = House.new({
    "name" => "Ravenclaw"
    })

    house2.save

    house3 = House.new({
      "name" => "Hufflepuff"
      })

      house3.save

      house4 = House.new({
        "name" => "Slytherin"
        })

        house4.save

        house5 = House.new({
          "name" => "WHat"
          })

          house5.save

student1 = Student.new({
  "first_name" => "Harry",
  "last_name" => "Potter",
  "house_id" => house1.id,
  "age" => 16
  })

  student1.save

  student2 = Student.new({
    "first_name" => "Ron",
    "last_name" => "Weasley",
    "house_id" => house1.id,
    "age" => 17
    })

    student2.save

    student3 = Student.new({
      "first_name" => "Draco",
      "last_name" => "Malfoy",
      "house_id" => house4.id,
      "age" => 15
      })

student3.save




binding.pry
nil
