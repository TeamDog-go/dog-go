# == Schema Information
#
# Table name: questions
#
#  id         :bigint(8)        not null, primary key
#  content    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  survey_id  :integer
#  source     :string
#

class Question < ApplicationRecord
  has_many :options
  belongs_to :question_set, optional: true
  validates :content, presence: true
end
