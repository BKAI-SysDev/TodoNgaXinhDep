# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times.each do |n|
  Todo.create description: "Todo #{n+1}"
end

10.times.each do |n|
  Todo.all.each_with_index do |todo, idx|
    Item.create content: "Item #{n+1},todo #{idx+1}", todo: todo
  end
end

