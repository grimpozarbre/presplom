class MaterielsEtudiants < ActiveRecord::Migration
  def up
    create_table :materiels_etudiants, :id => false do |t|
      t.references :materiel, :etudiant
      t.string :nombre
    end

    add_index :materiels_etudiants, [:id, :user_id]
  end

  def down
  end
end
