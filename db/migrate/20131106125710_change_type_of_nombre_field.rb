class ChangeTypeOfNombreField < ActiveRecord::Migration
  def up
      change_column :materiels_etudiants, :nombre, :integer
  end

  def down
    change_column :materiels_etudiants, :nombre, :string
  end
end
