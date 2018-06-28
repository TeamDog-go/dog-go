class AddSurveyIdAndDropUserIdFromResults < ActiveRecord::Migration[5.2]
  def change
    remove_column :results, :user_id
    add_column :results, :survey_id, :integer
  end
end
