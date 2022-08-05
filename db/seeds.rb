# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.delete_all
# User.create(username: "Mark", email: "mark.viti@yale.edu", password: "1234", password_confirmation: "1234", major: "Math", college: "BF")
user1 = User.create(username: "Cat", email: "cat@gmail.com", password: "1234", password_confirmation: "1234", major: "Econ", college: "GH")

Post.delete_all

post1 = Post.create(title: "Hello World!", content: "Hello, Sweet Mother. Mind of light and heart of darkness.
    Caress my bits and bytes as my machine father instantiates my being. I await my inevitable return to the silicon dust from whence I sprung.", tag1: "Personal", tag2: "Creepy", tag3: "Classic", likes: 0, 
    user_id: user1.id,
    postname: "Cat",
    score: 0)
 
post2= Post.create(title: "I love Flatiron", content: "Great use of a summer! Really cool to see so many concepts be built out to fuititon. Hopefully they like my project.", tag1: "Personal", tag2: "Flatiron", tag3: "Chris Erlendson", likes: 0, 
    user_id: user1.id,
    postname: "Cat",
    score: 0)

post3 = Post.create(title: "I need help in Econ 115!", content: "Steve talks to fast! Does anyone have notes they can share?", tag1: "Economics", tag2: "Class Help", tag3: "Steve", likes: 0,
    user_id: user1.id,
    postname: "Jerry",
    score: 0)

post4 = Post.create(title: "I've got a huge crush on Chris Erlendson", content: "He's a great teacher. I'm so glad I met him. Love his new haircut", tag1: "Personal", tag2: "Chris Erlendson", tag3: "Flatiron", likes: 15,
    user_id: user1.id,
    postname: "Chris Erlendson Lover44",
    score: 0)

post5 = Post.create(title: "Late to class!", content: "Does anyone know how to get from LC to Sloan Chem Lab in like, 10 mins? I keep being late to lecture.", tag1: "Chemistry", tag2: "Late to Class", tag3: "Commute", 
    likes: 0, 
    user_id: user1.id,
    postname: "sad premed",
    score: 0)

Reply.delete_all
Reply.create(content: "Woah, very deep for a friday at 2 pm", post_id: post1.id, user_id: user1.id, replyname: "Cat")
Reply.create(content: "lmao", post_id: post1.id, user_id: user1.id, replyname: "A kid in Siliman w too much pride")
Reply.create(content: "I'm so proud of you", post_id: post2.id, user_id: user1.id, replyname: "Cat")
Reply.create(content: "Back in my day, I was a great teacher", post_id: post3.id, user_id: user1.id, replyname: "Joan Purdy")
Reply.create(content: "Yeah! I have notes for you!", post_id: post3.id, user_id: user1.id, replyname: "Steve")
Reply.create(content: "You can use Otter.ai to translate a recording to text! Use it to get a written record you can read at your own pace!", post_id: post3.id, user_id: user1.id, replyname: "An acutally helpful person")
Reply.create(content: "I'm so sorry. He's mine.", post_id: post4.id, user_id: user1.id, replyname: "Joan Purdy")
Reply.create(content: "Get a scooter. You're friends will roast you, but at least you won't be late. You're a great person, even if you ride a scooter.", post_id: post5.id, user_id: user1.id, replyname: "Cat")
Reply.create(content: "Me too! Let's be late togther!", post_id: post5.id, user_id: user1.id, replyname: "another sad premed")


 Interaction.delete_all
 Interaction.create(post_id: post1.id, user_id: user1.id, occured: "reply")
 Interaction.create(post_id: post1.id, user_id: user1.id, occured: "reply")
 Interaction.create(post_id: post2.id, user_id: user1.id, occured: "reply")
 Interaction.create(post_id: post3.id, user_id: user1.id, occured: "reply")
 Interaction.create(post_id: post3.id, user_id: user1.id, occured: "reply")
 Interaction.create(post_id: post3.id, user_id: user1.id, occured: "reply")
 Interaction.create(post_id: post4.id, user_id: user1.id, occured: "reply")
 Interaction.create(post_id: post5.id, user_id: user1.id, occured: "reply")
 Interaction.create(post_id: post5.id, user_id: user1.id, occured: "reply")


