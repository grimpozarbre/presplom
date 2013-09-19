class ChangeUsertypeToSubtype < ActiveRecord::Migration
  def up
    rename_column :users, :usertype, :subtype
  end

  def down
    remove_column :users, :username
  end
end
