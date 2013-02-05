class CreateDeliveries < ActiveRecord::Migration
  def change
    create_table :deliveries do |t|
      t.datetime :time
      t.integer :distance
      t.integer :driver_id
      t.integer :car_id
      t.string :address
      t.string :phone
      t.string :name

      t.timestamps
    end
  end
end
