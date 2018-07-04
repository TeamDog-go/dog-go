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

require 'test_helper'

class AnswerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should not save answer without value" do
    answer = Answer.new
    assert_not answer.save, "Saved the answer without content"
  end

  should belong_to(:question)

end
