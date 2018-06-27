class RemoveSurveyIdFromAnswers < ActiveRecord::Migration[5.2]
  def change
    remove_column :answers, :survey_id
  end
end
