class ChangeStatusSubtypeField < ActiveRecord::Migration
  def change
    
  end

  def down
    change_column :users, :subtype, :string, :default => 'User', :null => false
  end
end
