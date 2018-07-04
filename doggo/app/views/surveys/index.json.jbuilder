json.surveys @surveys do |survey|
  json.id survey.id
  json.user_id survey.user_id
  json.answers survey.answers
end