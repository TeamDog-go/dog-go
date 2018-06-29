class MoveSourceFromSurveyToQ < ActiveRecord::Migration[5.2]
  def change
    add_column :questions, :source, :string
    remove_column :surveys, :source, :string
  end
end
