class QuestionSet < ApplicationRecord
    has_many :surveys
    has_many :questions
end
