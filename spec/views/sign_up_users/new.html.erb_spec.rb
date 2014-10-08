require 'spec_helper'

describe "sign_up_users/new" do
  before(:each) do
    assign(:sign_up_user, stub_model(SignUpUser).as_new_record)
  end

  it "renders new sign_up_user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", sign_up_users_path, "post" do
    end
  end
end
