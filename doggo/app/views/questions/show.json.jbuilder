json.question do
  json.id @question.id
  json.content @question.content
  json.content @question.source
  json.answers @question.answers
end
