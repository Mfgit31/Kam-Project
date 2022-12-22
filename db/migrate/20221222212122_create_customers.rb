class CreateCustomers < ActiveRecord::Migration[6.1]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :address
      t.string :email
      t.integer :phone
      t.integer :birthdate

      t.timestamps
    end
  end
end
