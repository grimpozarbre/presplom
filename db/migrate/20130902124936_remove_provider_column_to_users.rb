class RemoveProviderColumnToUsers < ActiveRecord::Migration
  def up
    remove_column :users, :provider
    remove_column :users, :name
    remove_column :users, :roles_mask
  end

  def down
    add_column :users, :provider, :string
    add_column :users, :name, :string
    add_column :users, :roles_mask, :string
  end
end
