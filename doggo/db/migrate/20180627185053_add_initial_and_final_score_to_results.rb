class AddInitialAndFinalScoreToResults < ActiveRecord::Migration[5.2]
  def change
    add_column :results, :final_score, :integer
  end
end
