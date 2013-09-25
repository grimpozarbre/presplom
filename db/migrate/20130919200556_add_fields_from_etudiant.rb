class AddFieldsFromEtudiant < ActiveRecord::Migration
  def change
        add_column :etudiants, :created_at, :string
        add_column :etudiants, :updated_at, :string
  end
end
