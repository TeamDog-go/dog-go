class RemoveUserIdFromQuestionsAndAddSurveyIdToQuestions < ActiveRecord::Migration[5.2]
  def change
    remove_column :questions, :user_id
    add_column  :questions, :survey_id, :integer
  end
end
