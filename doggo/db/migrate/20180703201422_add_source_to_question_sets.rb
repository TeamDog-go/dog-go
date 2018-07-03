class AddSourceToQuestionSets < ActiveRecord::Migration[5.2]
  def change
    add_column :question_sets, :source, :string
  end
end
