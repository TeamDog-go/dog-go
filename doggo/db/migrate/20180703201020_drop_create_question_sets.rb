class DropCreateQuestionSets < ActiveRecord::Migration[5.2]
  def change
    drop_table :question_sets
  end
end
