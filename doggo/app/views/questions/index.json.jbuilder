json.questions @questions do |question|
  json.id question.id
  json.content question.content
  json.answer question.answer
end