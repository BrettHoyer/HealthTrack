# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.delete_all
User.create(:email => 'brett@example.com',
			:name => 'Brett Hoyer',
			:password => '1',
			:password_confirmation => '1')

Exercise.delete_all
Exercise.create(:name => 'Bench Press',
				:date => Date.today,
				:user_id => User.last.id)

Exercise.create(:name => 'Squats',
				:date => Date.today,
				:user_id => User.last.id)

Turn.delete_all
Turn.create(:date => Date.today, 
			:reps => 12, 
			:turn_num => 1, 
			:weight => 200, 
			:exercise_id => Exercise.where(:name => 'Bench Press'))