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

require 'test_helper'

class ResultTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
