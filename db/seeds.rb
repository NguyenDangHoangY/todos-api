# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
5.times do |i|
    Todo.create(title: "todo #{i + 1}", created_by: 'Peter')
  end

Item.create(
    [
        {
            name: "do homework",
            done: false,
            todo_id: 1
        }, 
        {
            name: "do homework",
            done: false,
            todo_id: 1
        }, 
        {
            name: "do exercise",
            done: true,
            todo_id: 2
        }, 
        {
            name: "listen to songs",
            done: false,
            todo_id: 1
        }, 
        {
            name: "call mom",
            done: false,
            todo_id: 1
        }, 
        {
            name: "do homework",
            done: false,
            todo_id: 1
        }, 
    ]
)