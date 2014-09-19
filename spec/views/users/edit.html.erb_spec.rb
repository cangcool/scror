require 'spec_helper'

describe "users/edit" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :fullname => "MyString",
      :username => "MyString",
      :password => "MyString",
      :email => "MyString",
      :avatar => "MyString",
      :is_active => false
    ))
  end

  it "renders the edit user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", user_path(@user), "post" do
      assert_select "input#user_fullname[name=?]", "user[fullname]"
      assert_select "input#user_username[name=?]", "user[username]"
      assert_select "input#user_password[name=?]", "user[password]"
      assert_select "input#user_email[name=?]", "user[email]"
      assert_select "input#user_avatar[name=?]", "user[avatar]"
      assert_select "input#user_is_active[name=?]", "user[is_active]"
    end
  end
end
