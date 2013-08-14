class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :id_personne
      t.string :username
      t.string :nom
      t.string :prenom

      t.timestamps
    end
  end
end
