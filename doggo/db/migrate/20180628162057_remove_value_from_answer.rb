class RemoveValueFromAnswer < ActiveRecord::Migration[5.2]
  def change
    remove_column :answers, :value
  end
end
