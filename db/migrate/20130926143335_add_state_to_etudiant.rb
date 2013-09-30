class AddStateToEtudiant < ActiveRecord::Migration
  def self.up
  	add_column :etudiants, :aasm_state, :string
  end
end
