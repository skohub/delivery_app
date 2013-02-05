class ChangeName < ActiveRecord::Migration
  def up
  	change_table :deliveries do |t|
  		t.rename :name, :customer_name
  	end
  end

  def down
  	change_table :deliveries do |t|
  		t.rename :customer_name, :name
  	end
  end
end
