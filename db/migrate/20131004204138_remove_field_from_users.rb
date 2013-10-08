class RemoveFieldFromUsers < ActiveRecord::Migration
    def up
    remove_column :users, :provider
  end

  def down
  end
end
