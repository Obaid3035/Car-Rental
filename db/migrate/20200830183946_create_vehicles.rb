class CreateVehicles < ActiveRecord::Migration[6.0]
  def change
    create_table :vehicles do |t|
      t.integer :year
      t.string :reg_no
      t.references :car, null: true, foreign_key: false
      t.references :brand, null: true, foreign_key: false
      t.timestamps
    end
  end
end
