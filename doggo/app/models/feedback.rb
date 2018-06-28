# == Schema Information
#
# Table name: feedbacks
#
#  id         :bigint(8)        not null, primary key
#  answer_id  :integer
#  f_content  :string
#  f_color    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Feedback < ApplicationRecord
  belongs_to :answer
end
