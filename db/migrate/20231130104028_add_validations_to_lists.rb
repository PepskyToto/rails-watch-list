class AddValidationsToLists < ActiveRecord::Migration[7.1]
  def change
  #  add_index :lists, :name, unique: true
    change_column_null :lists, :name, false
  end
end
