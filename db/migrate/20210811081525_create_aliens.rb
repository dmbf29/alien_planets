class CreateAliens < ActiveRecord::Migration[6.0]
  def change
    create_table :aliens do |t|
      t.string :name
      t.string :banner_url

      t.timestamps
    end
  end
end
