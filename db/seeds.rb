# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'begin phase'
Restaurant.destroy_all
resto_test = [
  {
    name: "at ant's kebab",
    address: 'joanic 73',
    phone_number: '0478916180',
    category: 'japanese'
  },
  {
    name: 'MAXXX maxii FRITEEES XXXXl',
    address: 'La rambla 36',
    phone_number: '0474621708',
    category: 'belgian'
  },
  {
    name: "at delph flower backery",
    address: 'route des etoile dans mes yeux',
    phone_number: '0491873625',
    category: 'chinese'
  },
  {
    name: "at warco's smashed burgers",
    address: 'el raval 69',
    phone_number: '0469696969',
    category: 'french'
  },
  {
    name: "at adri's football bar",
    address: 'camp nou',
    phone_number: '0477777777',
    category: 'italian'
  }
]

Restaurant.create!(resto_test)
puts 'Finished!'
