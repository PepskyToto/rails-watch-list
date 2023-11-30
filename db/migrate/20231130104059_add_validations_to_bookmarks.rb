class AddValidationsToBookmarks < ActiveRecord::Migration[7.1]
  def change
    change_column_null :bookmarks, :comment, false
    add_index :bookmarks, [:movie_id, :list_id], unique: true
  end
end
