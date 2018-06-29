class CreateOptions < ActiveRecord::Migration[5.2]
  def change
    create_table :options do |t|
      t.integer "question_id"
      t.string "o_content"
      t.string "o_color"
      t.string "possible_points"
      t.timestamps
    end
  end
end
