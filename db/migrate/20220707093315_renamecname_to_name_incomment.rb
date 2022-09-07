class RenamecnameToNameIncomment < ActiveRecord::Migration[7.0]
  def change
    rename_column :comments, :cname, :commenter
  end
end
