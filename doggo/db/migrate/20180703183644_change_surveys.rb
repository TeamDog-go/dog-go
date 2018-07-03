class ChangeSurveys < ActiveRecord::Migration[5.2]
  def change
    add_column :surveys, :final_score, :integer
    add_column :surveys, :color, :string
    add_column :surveys, :initial_feeling, :integer
    add_column :surveys, :final_feeling, :integer
  end
end
