json.question_sets @question_sets do |qs|
    json.id qs.id
    json.source qs.source
    json.questions qs.questions
    json.options qs.options do |option|
        json.merge! q.options
    end
end