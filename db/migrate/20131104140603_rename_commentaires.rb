class RenameCommentaires < ActiveRecord::Migration
  def up
    rename_column :etudiants, :old_commentaires, :commentaires
  end

  def down
  end
end
