class AddOptionsToFeedbacks < ActiveRecord::Migration[5.2]
  def change
    add_column :feedbacks, :option_id, :integer
  end
end
