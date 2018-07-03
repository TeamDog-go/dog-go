class AddSourceToCategory < ActiveRecord::Migration[5.2]
  def change
    add_column :categories, :source, :string
  end
end
