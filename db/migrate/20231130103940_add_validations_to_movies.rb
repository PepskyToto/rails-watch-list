class AddValidationsToMovies < ActiveRecord::Migration[7.1]
  def change
    # add_index :movies, :title, unique: true
    change_column_null :movies, :title, false
    change_column_null :movies, :overview, false
  end
end
