class SetPrimaryKeyUnique < ActiveRecord::Migration
  def up
  end

  def down
    change_column :etudiants, :user_id, :unique => true
  end
end
