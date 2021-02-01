# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Category.create!(category: "カテゴリ1")

TodoList.create!(task: "hoge",
                 category_id: 1)
                 
TodoList.create!(task: "piyo",
                 category_id: 1)

Category.create!(category: "カテゴリ2")

TodoList.create!(task: "hogera",
                 category_id: 2)
                 
TodoList.create!(task: "piyopiyo",
                 category_id: 2)