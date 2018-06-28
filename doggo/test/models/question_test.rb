# == Schema Information
#
# Table name: questions
#
#  id         :bigint(8)        not null, primary key
#  content    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  survey_id  :integer
#

require 'test_helper'

class QuestionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should not save question without content" do
    question = Question.new
    assert_not question.save, "Saved the question without content"
  end

  should belong_to(:user)

end
