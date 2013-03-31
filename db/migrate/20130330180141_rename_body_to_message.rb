class RenameBodyToMessage < ActiveRecord::Migration
  def up
    rename_column :comments, :body, :message
  end

  def down
    rename_column :comments, :message, :body
  end
end
