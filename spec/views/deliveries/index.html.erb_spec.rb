require 'spec_helper'

describe "deliveries/index" do
  before(:each) do
    assign(:deliveries, [
      stub_model(Delivery,
        :distance => 1,
        :driver_id => 2,
        :car_id => 3,
        :address => "Address",
        :phone => "Phone",
        :name => "Name"
      ),
      stub_model(Delivery,
        :distance => 1,
        :driver_id => 2,
        :car_id => 3,
        :address => "Address",
        :phone => "Phone",
        :name => "Name"
      )
    ])
  end

  it "renders a list of deliveries" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
