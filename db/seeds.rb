# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Resto 1',
    address:      'Address 1',
    category:     'french'
  },
  {
    name:         'Resto 2',
    address:      'Address 2',
    category:     'chinese'
  },
  {
    name:         'Resto 3',
    address:      'Address 3',
    category:     'italian'
  },
  {
    name:         'Resto 4',
    address:      'Address 4',
    category:     'japanese'
  },
  {
    name:         'Resto 5',
    address:      'Address 5',
    category:     'italian'
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished restaurants!'

puts 'Cleaning database...'
Review.destroy_all

puts 'Creating reviews...'
reviews_attributes = [
  {
    content:       'Test 1',
    rating:        5,
    restaurant_id: 16
  },
  {
    content:       'Test 2',
    rating:        4,
    restaurant_id: 16
  },
]
Review.create!(reviews_attributes)
puts 'Finished!'
