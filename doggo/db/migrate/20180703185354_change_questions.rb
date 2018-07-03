class ChangeQuestions < ActiveRecord::Migration[5.2]
  def change
    remove_column :questions, :survey_id, :integer
    remove_column :questions, :source, :string
    add_column :questions, :question_set_id, :integer
  end
end
