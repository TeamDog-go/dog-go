# == Schema Information
#
# Table name: questions
#
#  id         :bigint(8)        not null, primary key
#  content    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  survey_id  :integer
#

class Question < ApplicationRecord
  has_many :answers
  has_many :options
  belongs_to :survey

  validates :content, presence: true
end
