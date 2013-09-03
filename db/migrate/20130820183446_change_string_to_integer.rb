class ChangeStringToInteger < ActiveRecord::Migration
  def up
    change_column :users, :idpersonne, :integer
  end

  def down
    change_column :users, :idpersonne, :string
  end
end
