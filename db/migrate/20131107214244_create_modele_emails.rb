class CreateModeleEmails < ActiveRecord::Migration
  def self.up
    create_table :modele_emails do |t|
      t.integer :id
      t.string :nom
      t.text :description
      t.text :contenu
      t.timestamps
    end
  end
end
