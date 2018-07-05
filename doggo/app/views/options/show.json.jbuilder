json.option do
    json.id @option.id
    json.content @option.o_content
    json.points @option.avail_points
    json.question_id @option.question_id
    json.feedback_text @option.feedback_text
  end