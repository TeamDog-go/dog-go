json.result do
  json.id @result.id
  json.survey_id @result.survey_id
  json.initial_score @result.initial_score
  json.final_score @result.final_score
  json.result_content @result.color
  json.survey_id @result.survey_id
end

