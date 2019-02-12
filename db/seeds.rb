# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(
	email: 'admin@admin.com',
	password: 'admin1',
	full_name: 'admin',
	admin: true,
	age: 100,
	salary: 100000,
	education: 'Ph.D'
)
User.create(
	email: 'student@admin.com',
	password: 'student',
	full_name: 'student',
	student: true,
	age: 12,
	salary: 100,
	education: 'High School'
)
User.create(
	email: 'instructor@admin.com',
	password: 'instructor',
	full_name: 'instructor',
	instructor: true,
	age: 25,
	salary: 10000,
	education: 'Master\'s Degree'
)

Course.create(
	name: 'Dragon Slaying 201',
	class_hours: 200
)
Course.create(
	name: 'Damsel Saving 305',
	class_hours: 200
)
Course.create(
	name: 'Armor Polishing 100',
	class_hours: 200
)
