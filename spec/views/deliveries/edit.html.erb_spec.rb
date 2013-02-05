require 'spec_helper'

describe "deliveries/edit" do
  before(:each) do
    @delivery = assign(:delivery, stub_model(Delivery,
      :distance => 1,
      :driver_id => 1,
      :car_id => 1,
      :address => "MyString",
      :phone => "MyString",
      :name => "MyString"
    ))
  end

  it "renders the edit delivery form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => deliveries_path(@delivery), :method => "post" do
      assert_select "input#delivery_distance", :name => "delivery[distance]"
      assert_select "input#delivery_driver_id", :name => "delivery[driver_id]"
      assert_select "input#delivery_car_id", :name => "delivery[car_id]"
      assert_select "input#delivery_address", :name => "delivery[address]"
      assert_select "input#delivery_phone", :name => "delivery[phone]"
      assert_select "input#delivery_name", :name => "delivery[name]"
    end
  end
end
