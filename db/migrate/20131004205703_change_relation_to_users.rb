class ChangeRelationToUsers < ActiveRecord::Migration
  def change
    change_table :users, :as_relation_superclass => true do |t|
      
    end
  end

  def down
  end
end
