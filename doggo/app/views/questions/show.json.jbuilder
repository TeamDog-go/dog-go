json.question do
  json.id @question.id
  json.content @question.content
  json.answer @question.answers
end
