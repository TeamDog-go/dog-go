json.question do
  json.id @question.id
  json.content @question.content
  json.source @question.source
  json.answers @question.answers
end
