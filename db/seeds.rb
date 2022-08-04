# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.delete_all
# User.create(username: "Mark", email: "mark.viti@yale.edu", password: "1234", password_confirmation: "1234", major: "Math", college: "BF")
User.create(username: "Cat", email: "cat@gmail.com", password: "1234", password_confirmation: "1234", major: "Econ", college: "GH")

Post.delete_all
    Post.create(title: "Hello World!", content: "Hello, Sweet Mother. Mind of light and heart of darkness.
    Caress my bits and bytes as my machine father instantiates my being. I await my inevitable return to the silicon dust from whence I sprung.", tag1: "Math", tag2: "Biology", tag3: "Class Help", likes: 0, 
    user_id: 1,
    postname: "Mark")
 

Reply.delete_all
Reply.create(content: "Woah, very deep for a friday at 2 pm", post_id: 1, user_id: 1)
Reply.create(content: "lmao", post_id: 2, user_id: 2)

Post.create(title: "Hello World!", content: "Hello, Sweet Mother. Mind of light and heart of darkness.
    Caress my bits and bytes as my machine father instantiates my being. I await my inevitable return to the silicon dust from whence I sprung.", tag1: "Math", tag2: "Biology", tag3: "Class Help", likes: 0, 
    user_id: 2,
    postname: "Cat")
 