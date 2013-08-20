class ChangeTypeColumnName < ActiveRecord::Migration
  def up
        rename_column :users, :type, :usertype
  end

  def down
  end
end
