class AddAnswerIdToSurvey < ActiveRecord::Migration[5.2]
  def change
    add_column :answers, :survey_id, :integer
  end
end
