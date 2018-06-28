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
  { id: 1, user_id: 1, source: "Rescue" },
  { id: 2, user_id: 2, source: "Shelter" },
  { id: 3, user_id: 3, source: "Shelter" }
])

questions = Question.create(
  [
    { id: 1, content: "What's up doc?", survey_id: 1 }, 
    { id: 2, content: "What's goin on?", survey_id: 1 },
    { id: 3, content: "How's the weather?", survey_id: 1 }
  ])

  answers = Answer.create([
    { question_id: 1, a_content: "yes", a_color: "green" },
    { question_id: 2, a_content: "no", a_color: "red" },
    { question_id: 3, a_content: "maybe", a_color: "yellow" }
  ])

  results = Result.create([
    { survey_id: 1, initial_feeling: 2, final_feeling: 4, final_score: 50, color: "red" },
    { survey_id: 2, initial_feeling: 3, final_feeling: 4, final_score: 70, color: "yellow" },
    { survey_id: 3, initial_feeling: 4, final_feeling: 5, final_score: 100, color: "green" },
    { survey_id: 3, initial_feeling: 5, final_feeling: 3, final_score: 120, color: "green" }
  ])

  feedbacks = Feedback.create([
    { answer_id: 1, f_content: "Not good", f_color: "red" },
    { answer_id: 2, f_content: "Ok", f_color: "yellow" },
    { answer_id: 3, f_content: "Great!", f_color: "green" }
  ])