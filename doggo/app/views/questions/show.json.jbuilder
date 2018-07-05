json.question do
  json.id @question.id
  json.content @question.content
  json.category @question.category
  json.options @question.options
end
