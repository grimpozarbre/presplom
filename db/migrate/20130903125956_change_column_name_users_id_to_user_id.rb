class ChangeColumnNameUsersIdToUserId < ActiveRecord::Migration
  def up
    rename_column :etudiants, :users_id, :user_id
  end

  def down
  end
end
