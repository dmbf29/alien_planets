class AddCategoryToPlanets < ActiveRecord::Migration[6.0]
  def change
    remove_column :planets, :type, :string
    add_column :planets, :category, :string
  end
end
