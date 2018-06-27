class AddInitialAndFinalScore < ActiveRecord::Migration[5.2]
  def change
    remove_column :results, :score
    add_column :results, :initial_score, :integer
    add_column :answers, :final_score, :integer
  end
end
