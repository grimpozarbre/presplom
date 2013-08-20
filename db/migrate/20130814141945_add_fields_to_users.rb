class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :idpersonne, :integer
    add_column :users, :username, :string
    add_column :users, :nom, :string
    add_column :users, :prenom, :string
    add_column :users, :email, :string
    add_column :users, :departement, :string
    add_column :users, :roles_mask, :string
    add_column :users, :type, :string
  end
end
