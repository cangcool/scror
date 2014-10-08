require 'spec_helper'

describe "demo_users/edit" do
  before(:each) do
    @demo_user = assign(:demo_user, stub_model(DemoUser))
  end

  it "renders the edit demo_user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", demo_user_path(@demo_user), "post" do
    end
  end
end
