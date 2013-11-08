class CreateMateriels < ActiveRecord::Migration
  def change
    create_table :materiels do |t|
      t.integer :id
      t.string :nom
      t.text :description
      t.string :type
      t.boolean :defaut

      t.timestamps
    end
  end
  
  def self.down
    drop table materiels
  end
end
