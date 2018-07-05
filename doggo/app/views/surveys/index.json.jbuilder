json.surveys @surveys do |survey|
  json.id survey.id
  json.user_id survey.user_id
  json.answers survey.answers
  json.answers @survey.answers do |answer|
    json.option_id answer.option_id
    option = Option.find(answer.option_id)
    json.option_question_id option.question_id
    json.option_content option.o_content
    json.option_color option.o_color
    json.option_points option.avail_points
    json.option_feedback option.feedback_text
  end
end