require 'spec_helper'

describe "product_backlogs/edit" do
  before(:each) do
    @product_backlog = assign(:product_backlog, stub_model(ProductBacklog,
      :content => "MyText",
      :sprint_id => 1,
      :point => 1
    ))
  end

  it "renders the edit product_backlog form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", product_backlog_path(@product_backlog), "post" do
      assert_select "textarea#product_backlog_content[name=?]", "product_backlog[content]"
      assert_select "input#product_backlog_sprint_id[name=?]", "product_backlog[sprint_id]"
      assert_select "input#product_backlog_point[name=?]", "product_backlog[point]"
    end
  end
end
