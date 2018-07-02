json.questions @questions do |question|
  json.id question.id
  json.content question.content
  json.source question.source
  json.answers question.answers
  json.options question.options
end