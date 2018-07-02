class RemoveAnswerIdFromFeedbacks < ActiveRecord::Migration[5.2]
  def change
    remove_column :feedbacks, :answer_id, :integer
  end
end
