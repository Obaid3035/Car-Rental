class CreateCars < ActiveRecord::Migration[6.0]
  def change
    create_table :cars do |t|
      t.string :name
      t.integer :year
      t.string :license_plate
      t.references :manufacturer, null: true, foreign_key: false

      t.timestamps
    end
  end
end
