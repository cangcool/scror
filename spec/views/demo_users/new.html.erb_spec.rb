require 'spec_helper'

describe "demo_users/new" do
  before(:each) do
    assign(:demo_user, stub_model(DemoUser).as_new_record)
  end

  it "renders new demo_user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", demo_users_path, "post" do
    end
  end
end
