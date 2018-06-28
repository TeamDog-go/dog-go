json.answer do
  json.id @answer.id
  json.answer_color @answer.a_color
  json.answer_content @answer.a_content
  json.question_id @answer.question_id
end
