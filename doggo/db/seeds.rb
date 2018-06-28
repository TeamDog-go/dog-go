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

surveys = Survey.create([
  { id: 1, user_id: 1 },
  { id: 2, user_id: 2 },
  { id: 3, user_id: 3 }
])

questions = Question.create(
  [
    { id: 1, content: "What's up doc?", survey_id: 1 }, 
    { id: 2, content: "What's goin on?", survey_id: 1 },
    { id: 3, content: "How's the weather?", survey_id: 1 }
  ])

  answers = Answer.create([
    { question_id: 1, value: true, a_content: "yes" },
    { question_id: 2, value: false, a_content: "no" },
    { question_id: 3, value: nil, a_content: "maybe" }
  ])

  results = Result.create([
    { survey_id: 1, initial_score: 25, final_score: 50, color: "red" },
    { survey_id: 2, initial_score: 75, final_score: 70, color: "yellow" },
    { survey_id: 3, initial_score: 95, final_score: 100, color: "green" },
    { survey_id: 3, initial_score: 100, final_score: 120, color: "green" }
  ])