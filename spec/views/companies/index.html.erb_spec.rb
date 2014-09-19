require 'spec_helper'

describe "companies/index" do
  before(:each) do
    assign(:companies, [
      stub_model(Company,
        :name => "Name",
        :address => "Address",
        :country_id => 1,
        :email => "Email",
        :web_address => "Web Address",
        :user_id => 2
      ),
      stub_model(Company,
        :name => "Name",
        :address => "Address",
        :country_id => 1,
        :email => "Email",
        :web_address => "Web Address",
        :user_id => 2
      )
    ])
  end

  it "renders a list of companies" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Web Address".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
