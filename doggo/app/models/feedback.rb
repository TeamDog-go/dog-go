# == Schema Information
#
# Table name: feedbacks
#
#  id         :bigint(8)        not null, primary key
#  f_content  :string
#  f_color    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  option_id  :integer
#

class Feedback < ApplicationRecord
  belongs_to :option
end
