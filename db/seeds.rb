# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(first_name: 'Toby', last_name: 'Zitsman', email: 'tzitsman@gmail.com', gender: 'Male', age: 25, fav_food: 'pasta', fav_workout: 'long run')
User.create(first_name: 'Natalia', last_name: 'Hess', email: 'natalia@fruit.com', gender: 'Female', age: 24, fav_food: 'kale', fav_workout: 'all of them')


Workout.create(title: 'the nathan', description: '100 mile bike ride, while dreaming about potatoes', verb: 'bike', qty: 100, unit: 'miles', unit_of_competition: 'mins')
Workout.create(title: 'the other toby', description: '10 mile run, preferably through the wilderness, reflecting on your feelings', verb: 'run', qty: 10, unit: 'miles', unit_of_competition: 'mins')

Workout.create(title: 'the toby', description: '5 mile run, preferably through the wilderness, reflecting on your feelings', verb: 'run', qty: 5, unit: 'miles', unit_of_competition: 'mins')
Workout.create(title: 'the natalia', description: '15 mile bike ride, stopping every mile to lift heavy weights', verb: 'bike', qty: 15, unit: 'miles', unit_of_competition: 'mins')
Workout.create(title: 'the teddy', description: '500 meter swim, stopping every lap to gasp for air and try to climb out', verb: 'swim', qty: 500, unit: 'meters', unit_of_competition: 'mins')



Result.create(user_id: 1, workout_id: 1, qty: 35, unit: 'minutes')
Result.create(user_id: 1, workout_id: 2, qty: 7, unit: 'minutes')
Result.create(user_id: 1, workout_id: 3, qty: 75, unit: 'minutes')
