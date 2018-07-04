json.category do
    json.id @category.id
    json.source @category.source
    json.questions @category.questions do |question|
      json.merge! question
    end
end