require 'spec_helper'

describe "deliveries/show" do
  before(:each) do
    @delivery = assign(:delivery, stub_model(Delivery,
      :distance => 1,
      :driver_id => 2,
      :car_id => 3,
      :address => "Address",
      :phone => "Phone",
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/Address/)
    rendered.should match(/Phone/)
    rendered.should match(/Name/)
  end
end
