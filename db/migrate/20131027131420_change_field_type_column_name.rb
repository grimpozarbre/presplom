class ChangeFieldTypeColumnName < ActiveRecord::Migration
  def up
    rename_column :materiels, :type, :type_materiel
  end

  def down
  end
end
