# == Schema Information
#
# Table name: results
#
#  id         :bigint(8)        not null, primary key
#  score      :integer
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  color      :string
#

require 'test_helper'

class ResultTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
