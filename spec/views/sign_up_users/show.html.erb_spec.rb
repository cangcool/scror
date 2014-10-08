require 'spec_helper'

describe "sign_up_users/show" do
  before(:each) do
    @sign_up_user = assign(:sign_up_user, stub_model(SignUpUser))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
