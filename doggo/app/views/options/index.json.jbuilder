json.options @options do |option|
  json.id option.id
  json.content option.content
  json.category option.category_id
  json.options option.options
end