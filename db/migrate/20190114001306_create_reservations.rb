class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.string :name
      t.date :date
      t.string :time
      t.string :course

      t.timestamps
    end
  end
end
