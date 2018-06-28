# == Schema Information
#
# Table name: answers
#
#  id          :bigint(8)        not null, primary key
#  question_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  a_content   :string
#  a_color     :string
#

class Answer < ApplicationRecord
  belongs_to :question
  has_one :feedback
end
