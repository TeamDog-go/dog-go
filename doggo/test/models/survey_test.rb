# == Schema Information
#
# Table name: surveys
#
#  id              :bigint(8)        not null, primary key
#  user_id         :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  final_score     :integer
#  color           :string
#  initial_feeling :integer
#  final_feeling   :integer
#

require 'test_helper'

class SurveyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
