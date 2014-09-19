require 'spec_helper'

describe "companies/new" do
  before(:each) do
    assign(:company, stub_model(Company,
      :name => "MyString",
      :address => "MyString",
      :country_id => 1,
      :email => "MyString",
      :web_address => "MyString",
      :user_id => 1
    ).as_new_record)
  end

  it "renders new company form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", companies_path, "post" do
      assert_select "input#company_name[name=?]", "company[name]"
      assert_select "input#company_address[name=?]", "company[address]"
      assert_select "input#company_country_id[name=?]", "company[country_id]"
      assert_select "input#company_email[name=?]", "company[email]"
      assert_select "input#company_web_address[name=?]", "company[web_address]"
      assert_select "input#company_user_id[name=?]", "company[user_id]"
    end
  end
end
