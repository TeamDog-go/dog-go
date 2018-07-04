class AddCategoryIdToSurveys < ActiveRecord::Migration[5.2]
  def change
    add_column :surveys, :category_id, :integer
  end
end
