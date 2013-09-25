class AddPrimaryKeyToEtudiants < ActiveRecord::Migration
  def down
    change_column :etudiants, :user_id, :primary => true
  end
end
