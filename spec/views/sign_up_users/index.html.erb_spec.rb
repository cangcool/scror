require 'spec_helper'

describe "sign_up_users/index" do
  before(:each) do
    assign(:sign_up_users, [
      stub_model(SignUpUser),
      stub_model(SignUpUser)
    ])
  end

  it "renders a list of sign_up_users" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
