class AddTimeToQuestions < ActiveRecord::Migration[5.2]
  def change
    add_column :questions, :time, :string
  end
end
