class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.string :client_name
      t.string :father_name
      t.string :cnic
      t.string :address
      t.string :telephone
      t.integer :duration
      t.integer :daily_rate
      t.datetime :rent_start_date
      t.integer :advance_deposit
      t.integer :balance
      t.integer :total
      t.references :car, null: true, foreign_key: false
      t.timestamps
    end
  end
end
