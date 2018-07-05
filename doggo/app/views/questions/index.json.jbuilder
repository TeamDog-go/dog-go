json.questions @questions do |question|
  json.id question.id
  json.content question.content
  json.category question.category_id
  json.options question.options
end