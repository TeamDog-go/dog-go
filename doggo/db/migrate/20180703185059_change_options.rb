class ChangeOptions < ActiveRecord::Migration[5.2]
  def change
    add_column :options, :feedback_text, :text
  end
end
