class AddItemNameToDelivery < ActiveRecord::Migration
  def change
    add_column :deliveries, :item_name, :string
  end
end
