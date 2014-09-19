require 'spec_helper'

describe "product_backlogs/index" do
  before(:each) do
    assign(:product_backlogs, [
      stub_model(ProductBacklog,
        :content => "MyText",
        :sprint_id => 1,
        :point => 2
      ),
      stub_model(ProductBacklog,
        :content => "MyText",
        :sprint_id => 1,
        :point => 2
      )
    ])
  end

  it "renders a list of product_backlogs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
