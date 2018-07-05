json.options @options do |option|
  json.id question.id
  json.content question.content
  json.category question.category
  json.answers question.answers
  json.options question.options
end