json.categories @categories do |category|
    json.id category.id
    json.source category.source
    json.questions category.questions
    json.options category.options do |option|
        json.merge! category.options
    end
end