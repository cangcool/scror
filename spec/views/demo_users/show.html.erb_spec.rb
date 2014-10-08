require 'spec_helper'

describe "demo_users/show" do
  before(:each) do
    @demo_user = assign(:demo_user, stub_model(DemoUser))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
