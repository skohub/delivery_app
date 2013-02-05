class AddTripTimeToDeliveries < ActiveRecord::Migration
  def change
    add_column :deliveries, :trip_time, :integer
  end
end
