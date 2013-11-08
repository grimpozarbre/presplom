class ChangeFieldTypeOnEtudiants < ActiveRecord::Migration
   def up
    change_column :etudiants, :naissance, :date
  end

  def down
    change_column :etudiants, :naissance, :string
  end
end
