# == Schema Information
#
# Table name: surveys
#
#  id              :bigint(8)        not null, primary key
#  user_id         :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  final_score     :integer
#  color           :string
#  initial_feeling :integer
#  final_feeling   :integer
#

class Survey < ApplicationRecord
  belongs_to :user
  has_many :answers, :through=> :options
  belongs_to :category
  accepts_nested_attributes_for :answers, :allow_destroy => true
end




  # The below was the original associations
  # May need to use a belongs_to through for multiple belongs to?
  # has_one :result
  # has_many :questions
  # has_many :answers, :through=> :questions
  # has_many :feedbacks, :through=> :answers
  # accepts_nested_attributes_for :answers, :questions, :allow_destroy => true
  # accepts_nested_attributes_for :result, :allow_destroy => true
