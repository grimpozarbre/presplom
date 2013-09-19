# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130913130001) do

  create_table "etudiants", :primary_key => "user_id", :force => true do |t|
    t.string   "titre"
    t.string   "naissance"
    t.string   "origine"
    t.string   "adresse"
    t.string   "care_of"
    t.string   "npa"
    t.string   "ville"
    t.string   "filiere"
    t.string   "orientation"
    t.string   "mode"
    t.datetime "last_connected_at"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.string   "statut"
  end

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "roles_users", :id => false, :force => true do |t|
    t.integer "role_id"
    t.integer "user_id"
  end

  create_table "users", :force => true do |t|
    t.string   "uid"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
    t.integer  "idpersonne",  :limit => 255
    t.string   "nom"
    t.string   "prenom"
    t.string   "email"
    t.string   "departement"
    t.string   "subtype"
  end

end
