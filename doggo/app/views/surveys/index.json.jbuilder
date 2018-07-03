json.surveys @surveys do |survey|
  json.id survey.id
  json.user_id survey.user_id
  json.answers survey.answers
  json.answers survey.options do |answer|
    json.merge! answers.options
  end
end