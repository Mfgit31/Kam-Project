class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.belongs_to :housing, null: false, foreign_key: true
      t.belongs_to :customer, null: false, foreign_key: true
      t.integer :date
      t.integer :time

      t.timestamps
    end
  end
end
