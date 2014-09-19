require 'spec_helper'

describe "users/show" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :fullname => "Fullname",
      :username => "Username",
      :password => "Password",
      :email => "Email",
      :avatar => "Avatar",
      :is_active => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Fullname/)
    rendered.should match(/Username/)
    rendered.should match(/Password/)
    rendered.should match(/Email/)
    rendered.should match(/Avatar/)
    rendered.should match(/false/)
  end
end
