# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Post.delete_all
20.times do 
    Post.create(title: "Hello World!", content: "Hello, Sweet Mother. Mind of light and heart of darkness.
    Caress my bits and bytes as my machine father instantiates my being. I await my inevitable return to the silicon dust from whence I sprung.")
end 

Reply.delete_all
Reply.create(content: "lmao", post_id: 20)