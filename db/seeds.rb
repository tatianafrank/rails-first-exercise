ironhack=Project.create name: 'Ironhack', description: 'Ironhack is a...'

timetracker=Project.create name: 'Time tracking app'

recipes=Project.create name: 'Recipes', description: 'Track my favourite recipes'

ironhack.entries.create hours: 1, minutes:2, date: Date.new(2015, 3),  comment: 'coding bootcamp'
10.times do |i|
	ironhack.entries.create hours: 2, minutes:3, date: Time.now, comment: 'comment #{i}'
end

timetracker.entries.create hours: 1, minutes:2, date: Date.new(2015, 2), comment: 'this is an app'

recipes.entries.create hours: 1, minutes:2, date: Date.new(2015, 1), comment: 'this is a recipe'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
