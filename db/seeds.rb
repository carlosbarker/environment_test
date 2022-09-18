# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Book.create!([
    {title: "The life of a turtle", author: "Kim Lee", price: 19.99, published_date: "1997-06-08"},
    {title: "The mirror, the lion, and the audacity of the little dog", author: "James Guandolo", price: 5.99, published_date: "2005-08-08"},
    {title: "Origami for cats", author: "Juan Lara", price: 9.99, published_date: "2022-01-25"},
    {title: "The weight of a hundred kilograms", author: "Alex Hayward", price: 15.99, published_date: "2020-03-14"}
])
