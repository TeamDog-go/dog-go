class CreateFeedbacks < ActiveRecord::Migration[5.2]
  def change
    create_table :feedbacks do |t|
      t.integer :answer_id
      t.string :f_content
      t.string :f_color

      t.timestamps
    end
  end
end
