# == Schema Information
#
# Table name: surveys
#
#  id         :bigint(8)        not null, primary key
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  source     :string
#

class Survey < ApplicationRecord
  belongs_to :user
  has_one :result
  has_many :questions
  has_many :answers, :through=> :questions
  has_many :feedbacks, :through=> :answers
end
