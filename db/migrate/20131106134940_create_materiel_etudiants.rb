class CreateMaterielEtudiants < ActiveRecord::Migration
  def change
    create_table :materiel_etudiants, :id => false do |t|
      t.references :materiel, :etudiant
      t.integer :nombre
      t.timestamps
    end
    add_index :materiel_etudiants, [:id, :user_id]
  end
end


