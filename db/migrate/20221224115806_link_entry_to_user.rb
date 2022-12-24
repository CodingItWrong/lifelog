class LinkEntryToUser < ActiveRecord::Migration[7.0]
  def up
    add_reference :entries, :user, null: true
    Entry.update_all('user_id = 1')
    change_column_null :entries, :user_id, false
  end

  def down
    remove_reference :entries, :user
  end
end
