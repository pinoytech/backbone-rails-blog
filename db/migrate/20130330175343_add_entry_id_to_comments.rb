class AddEntryIdToComments < ActiveRecord::Migration
  def change
    add_column :comments, :entry_id, :integer
    add_column :comments, :name, :text
  end
end
