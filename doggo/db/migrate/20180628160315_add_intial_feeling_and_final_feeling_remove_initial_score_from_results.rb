class AddIntialFeelingAndFinalFeelingRemoveInitialScoreFromResults < ActiveRecord::Migration[5.2]
  def change
    add_column :results, :initial_feeling, :integer
    add_column :results, :final_feeling, :integer
    remove_column :results, :initial_score
  end
end
