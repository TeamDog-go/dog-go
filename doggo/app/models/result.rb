# == Schema Information
#
# Table name: results
#
#  id            :bigint(8)        not null, primary key
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  color         :string
#  survey_id     :integer
#  initial_score :integer
#  final_score   :integer
#

class Result < ApplicationRecord
  belongs_to :survey
end
