json.category do
    json.id @category.id
    json.source @category.source
    json.questions @category.questions
    json.options @category.questions do |question|
      json.merge! question.options
    end
end