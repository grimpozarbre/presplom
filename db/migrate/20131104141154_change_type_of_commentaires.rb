class ChangeTypeOfCommentaires < ActiveRecord::Migration
  def up
    change_column :etudiants, :commentaires, :text
  end

  def down
    change_column :etudiants, :commentaires, :string
  end
end
