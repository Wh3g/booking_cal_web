class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.string :name
      t.string :service
      t.date :date
      t.time :time_start

      t.timestamps
    end
  end
end
