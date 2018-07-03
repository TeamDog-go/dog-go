json.survey do
  json.id @survey.id
  json.user_id @survey.user_id
  json.final_score @survey.final_score
  json.color @survey.color
  json.initial_feeling @survey.initial_feeling
  json.final_feeling @survey.final_feeling
  json.answers @survey.answers.option
end
