json.question_set do
    json.id @question_set.id
    json.source @question_set.source
    json.questions @question_set.questions
    json.options @question_set.questions do |question|
        json.merge! question.options
    end
end