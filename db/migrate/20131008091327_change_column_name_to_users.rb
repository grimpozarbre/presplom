class ChangeColumnNameToUsers < ActiveRecord::Migration
  def up
    rename_column :users, :subtype, :user_type
  end

  def down
  end
end
