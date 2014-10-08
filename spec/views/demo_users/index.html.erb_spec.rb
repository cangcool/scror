require 'spec_helper'

describe "demo_users/index" do
  before(:each) do
    assign(:demo_users, [
      stub_model(DemoUser),
      stub_model(DemoUser)
    ])
  end

  it "renders a list of demo_users" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
