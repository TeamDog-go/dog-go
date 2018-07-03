class Question_Set < ApplicationRecord
    has_many :surveys
    has_many :questions
  end
  