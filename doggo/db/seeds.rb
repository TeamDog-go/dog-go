
users = User.create([
  { username: "p", password: "p" },
  { username: "c", password: "c" },
  { username: "cp", password: "cp" }
])

questions = Question.create(
  [
    { content: "What's up doc?", category_id: 1 }, 
    { content: "What's goin on?", category_id: 2 },
    { content: "How's the weather?", category_id: 3 }
  ])

  categories = Category.create([
    { source: "Breeder" },
    { source: "Shelter" },
    { source: "Individual" }
  ])

  options = Option.create([
    { o_content: "yes", question_id: 1, o_color: "red", avail_points: 1, feedback_text: "This is bad"},
    { o_content: "no", question_id: 2, o_color: "green", avail_points: 10, feedback_text: "This is good"},
    { o_content: "maybe", question_id: 3, o_color: "yellow", avail_points: 5, feedback_text: "This is okay"}
  ])

  answers = Answer.create([
    { option_id: 1, survey_id: 2},
    { option_id: 2, survey_id: 3},
    { option_id: 3, survey_id: 1}
  ])


  surveys = Survey.create([
    { user_id: 1, initial_feeling: 2, final_feeling: 4, final_score: 50, color: "red" },
    { user_id: 2, initial_feeling: 3, final_feeling: 4, final_score: 70, color: "yellow" },
    { user_id: 1, initial_feeling: 4, final_feeling: 5, final_score: 100, color: "green" },
    { user_id: 2, initial_feeling: 5, final_feeling: 3, final_score: 120, color: "green" }
  ])
