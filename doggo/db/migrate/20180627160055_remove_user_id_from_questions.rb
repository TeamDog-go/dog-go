class RemoveUserIdFromQuestions < ActiveRecord::Migration[5.2]
  def change
    remove_column :questions, :user_id, :integer
    add_column :questions, :survey_id, :integer
  end
end
