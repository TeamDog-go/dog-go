class AddSourceToSurvey < ActiveRecord::Migration[5.2]
  def change
    add_column :surveys, :source, :string
  end
end
