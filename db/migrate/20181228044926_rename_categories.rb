class RenameCategories < ActiveRecord::Migration[5.2]
  def change
    rename_table('categories', 'questions')
  end
end
