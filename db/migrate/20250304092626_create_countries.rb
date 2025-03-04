class CreateCountries < ActiveRecord::Migration[7.1]
  def change
    create_table :countries do |t|
      t.string :name
      t.text :description
      t.string :image_url
      t.integer :initial_price

      t.timestamps
    end
  end
end
