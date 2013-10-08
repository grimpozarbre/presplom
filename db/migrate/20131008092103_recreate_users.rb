class RecreateUsers < ActiveRecord::Migration
  create_table :users, :as_relation_superclass => true do |t|
    t.integer  :id,          :unique => true 
    t.string   :uid
    t.string   :idpersonne 
    t.string   :nom 
    t.string   :prenom 
    t.string   :email
    t.string   :departement 
    t.datetime :created_at 
    t.datetime :updated_at 
    t.string   :user_type
  end

  def down
    drop table :users
  end
end
