# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Workout.create(title: '5 mile run', description: '5 miles straight of running', qty: 5, unit: 'miles', unit_of_competition: 'mins')
# Workout.create(title: '10 mile run', description: '10 miles straight of running', qty: 10, unit: 'miles', unit_of_competition: 'mins')
# Workout.create(title: '10 mile ride', description: '10 miles straight of biking', qty: 10, unit: 'miles', unit_of_competition: 'mins')
# Workout.create(title: '25 mile ride', description: '25 miles straight of biking', qty: 25, unit: 'miles', unit_of_competition: 'mins')
# Workout.create(title: '800 meter swim', description: '.5 miles straight of swimming', qty: 800, unit: 'meters', unit_of_competition: 'mins')
# Workout.create(title: '1 mile swim', description: '1 mile straight of swimming', qty: 1, unit: 'miles', unit_of_competition: 'mins')

User.create(first_name: 'Toby', last_name: 'Zitsman', email: 'tzitsman@gmail.com', gender: 'Male', age: 25, fav_food: 'pasta', fav_workout: 'long run')
User.create(first_name: 'Natalia', last_name: 'Hess', email: 'natalia@fruit.com', gender: 'Female', age: 24, fav_food: 'kale', fav_workout: 'all of them')


Result.create(user_id: 1, workout_id: 1, qty: 35, unit: 'minutes')
Result.create(user_id: 1, workout_id: 5, qty: 7, unit: 'minutes')
Result.create(user_id: 1, workout_id: 4, qty: 75, unit: 'minutes')

