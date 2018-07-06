json.category do
    json.id @category.id
    json.last_updated @category.updated_at
    json.source @category.source
    json.questions @category.questions
    json.options @category.questions do |question|
      json.merge! question.options
    end
end