json.question do
  json.id @question.id
  json.content @question.content
  json.answers @question.answers
end
