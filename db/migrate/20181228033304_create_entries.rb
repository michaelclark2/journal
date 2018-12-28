class CreateEntries < ActiveRecord::Migration[5.2]
  def change
    rename_table('posts', 'entries')
  end
end
