# == Schema Information
#
# Table name: options
#
#  id            :bigint(8)        not null, primary key
#  question_id   :integer
#  o_content     :string
#  o_color       :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  avail_points  :integer
#  feedback_text :text
#

require 'test_helper'

class OptionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
