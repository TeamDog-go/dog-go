# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create([
  { username: "p", password: "p" },
  { username: "c", password: "c" },
  { username: "cp", password: "cp" }
])

questions = Question.create(
  [
    { id: 1, content: "What's up doc?", user_id: 1 }, 
    { id: 2, content: "What's goin on?", user_id: 2 },
    { id: 3, content: "How's the weather?", user_id: 3 }
  ])

  answers = Answer.create([
    { question_id: 1, value: true, a_content: "yes", user_id: 1 },
    { question_id: 2, value: false, a_content: "no", user_id: 2 },
    { question_id: 3, value: nil, a_content: "maybe", user_id: 3 }
  ])

  results = Result.create([
    { user_id: 1, score: 25, color: "red" },
    { user_id: 2, score: 75, color: "yellow" },
    { user_id: 3, score: 95, color: "green" },
    { user_id: 3, score: 100, color: "green" }
  ])