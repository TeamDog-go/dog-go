# == Schema Information
#
# Table name: answers
#
#  id         :bigint(8)        not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  option_id  :integer
#  survey_id  :integer
#

class Answer < ApplicationRecord
  belongs_to :survey
  belongs_to :option
end
