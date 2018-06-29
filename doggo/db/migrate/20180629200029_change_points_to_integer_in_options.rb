class ChangePointsToIntegerInOptions < ActiveRecord::Migration[5.2]
  def change
    add_column :options, :avail_points, :integer
    remove_column :options, :possible_points, :string
  end
end
