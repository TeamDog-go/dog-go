json.survey do
  json.id @survey.id
  json.user_id @survey.user_id
  json.final_score @survey.final_score
  json.color @survey.color
  json.initial_feeling @survey.initial_feeling
  json.final_feeling @survey.final_feeling
  json.answers @survey.answers do |answer|
    json.option_id answer.option_id
    option = Option.find(answer.option_id)
    json.option_content option.o_content
    json.option_color option.o_color
    json.option_points option.avail_points
    json.option_feedback option.feedback_text
  end
end
