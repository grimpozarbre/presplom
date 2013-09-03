class ChangeIdPersonneFieldFormat < ActiveRecord::Migration
  def up
    change_column :users, :idpersonne, :string
  end

  def down
    change_column :users, :idpersonne, :integer
  end
end
