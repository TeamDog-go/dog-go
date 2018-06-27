json.results @results do |result|
  json.id result.id
  json.question_id result.question_id
  json.survey_id result.survey_id
  json.initial_score result.initial_score
  json.final_score result.final_score
end