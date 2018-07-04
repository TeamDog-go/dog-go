class CreateQuestionSet < ActiveRecord::Migration[5.2]
  def change
    create_table :question_sets do |t|
      t.string "source"
    end
  end
end
