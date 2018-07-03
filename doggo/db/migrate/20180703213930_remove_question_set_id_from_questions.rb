class RemoveQuestionSetIdFromQuestions < ActiveRecord::Migration[5.2]
  def change
    remove_column :questions, :question_set_id, :integer
  end
end
