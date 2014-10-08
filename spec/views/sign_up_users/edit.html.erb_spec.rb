require 'spec_helper'

describe "sign_up_users/edit" do
  before(:each) do
    @sign_up_user = assign(:sign_up_user, stub_model(SignUpUser))
  end

  it "renders the edit sign_up_user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", sign_up_user_path(@sign_up_user), "post" do
    end
  end
end
