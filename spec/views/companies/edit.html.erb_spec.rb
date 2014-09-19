require 'spec_helper'

describe "companies/edit" do
  before(:each) do
    @company = assign(:company, stub_model(Company,
      :name => "MyString",
      :address => "MyString",
      :country_id => 1,
      :email => "MyString",
      :web_address => "MyString",
      :user_id => 1
    ))
  end

  it "renders the edit company form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", company_path(@company), "post" do
      assert_select "input#company_name[name=?]", "company[name]"
      assert_select "input#company_address[name=?]", "company[address]"
      assert_select "input#company_country_id[name=?]", "company[country_id]"
      assert_select "input#company_email[name=?]", "company[email]"
      assert_select "input#company_web_address[name=?]", "company[web_address]"
      assert_select "input#company_user_id[name=?]", "company[user_id]"
    end
  end
end
