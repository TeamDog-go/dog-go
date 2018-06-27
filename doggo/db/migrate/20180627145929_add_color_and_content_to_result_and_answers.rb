class AddColorAndContentToResultAndAnswers < ActiveRecord::Migration[5.2]
  def change
    add_column :answers, :a_content, :string
    add_column :results, :color, :string
  end
end
