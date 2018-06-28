class AddColorToAnswer < ActiveRecord::Migration[5.2]
  def change
    add_column :answers, :a_color, :string
  end
end
