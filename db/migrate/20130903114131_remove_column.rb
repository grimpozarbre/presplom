class RemoveColumn < ActiveRecord::Migration
  def up
    remove_column :users, :username
  end

  def change
    
  end
end
