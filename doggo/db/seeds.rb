# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

questions = Question.create(
  [
    { id: 1, content: "What's up doc?"}, 
    { id: 2, content: "What's goin on?"},
    { id: 3, content: "How's the weather?"}
  ])

  answers = Answer.create([
    { question_id: 1, value: true },
    { question_id: 2, value: false},
    { question_id: 3, value: nil }
  ])