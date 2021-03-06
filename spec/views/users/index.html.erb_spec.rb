require 'spec_helper'

describe "users/index" do
  before(:each) do
    assign(:users, [
      stub_model(User,
        :fullname => "Fullname",
        :username => "Username",
        :password => "Password",
        :email => "Email",
        :avatar => "Avatar",
        :is_active => false
      ),
      stub_model(User,
        :fullname => "Fullname",
        :username => "Username",
        :password => "Password",
        :email => "Email",
        :avatar => "Avatar",
        :is_active => false
      )
    ])
  end

  it "renders a list of users" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Fullname".to_s, :count => 2
    assert_select "tr>td", :text => "Username".to_s, :count => 2
    assert_select "tr>td", :text => "Password".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Avatar".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
