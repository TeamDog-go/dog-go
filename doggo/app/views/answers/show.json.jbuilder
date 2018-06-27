json.answer do
  json.id @answer.id
  json.value @answer.value
  json.answer_content @answer.a_content
  json.question_id @answer.question_id
end
