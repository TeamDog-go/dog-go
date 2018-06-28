json.result do
  json.id @result.id
  json.survey_id @result.survey_id
  json.survey_id @result.survey_id
  json.initial_feeling @result.initial_feeling
  json.final_feeling @result.final_feeling
  json.final_score @result.final_score
  json.result_content @result.color
end

