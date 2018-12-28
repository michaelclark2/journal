class AddQuestionId < ActiveRecord::Migration[5.2]
  def change
    add_column :entries, :question_id, :integer, index: true
    add_foreign_key :entries, :questions, column: :question_id
  end
end
