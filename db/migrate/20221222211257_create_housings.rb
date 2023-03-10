class CreateHousings < ActiveRecord::Migration[6.1]
  def change
    create_table :housings do |t|
      t.string :address
      t.string :image
      t.string :overview
      t.integer :price
      t.boolean :buy
      t.boolean :rent
      t.boolean :sold

      t.timestamps
    end
  end
end
