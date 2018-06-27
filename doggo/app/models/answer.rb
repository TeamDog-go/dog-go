# == Schema Information
#
# Table name: answers
#
#  id          :bigint(8)        not null, primary key
#  value       :boolean
#  question_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  a_content   :string
#

class Answer < ApplicationRecord
  belongs_to :user
  belongs_to :question

  validates :value, presence: true
end
