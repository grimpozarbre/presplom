class RemoveFieldFromEtudiants < ActiveRecord::Migration
  def up
    remove_column :etudiants, :statut
  end

  def down
  end
end
