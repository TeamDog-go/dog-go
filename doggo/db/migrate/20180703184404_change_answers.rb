class ChangeAnswers < ActiveRecord::Migration[5.2]
  def change
    remove_column :answers, :question_id, :integer
    remove_column :answers, :a_content, :string
    remove_column :answers, :a_color, :string
    remove_column :answers, :points, :integer
    add_column :answers, :option_id, :integer
    add_column :answers, :survey_id, :integer
  end
end
