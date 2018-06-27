class RemoveFinalScoreFromAnswers < ActiveRecord::Migration[5.2]
  def change
    remove_column :answers, :final_score
  end
end
