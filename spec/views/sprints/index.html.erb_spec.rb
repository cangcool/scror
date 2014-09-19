require 'spec_helper'

describe "sprints/index" do
  before(:each) do
    assign(:sprints, [
      stub_model(Sprint,
        :name => "Name",
        :description => "MyText",
        :project_id => 1,
        :sprint_order_number => 2,
        :sprint_state_id => 3,
        :creator_id => 4,
        :modifier_id => 5
      ),
      stub_model(Sprint,
        :name => "Name",
        :description => "MyText",
        :project_id => 1,
        :sprint_order_number => 2,
        :sprint_state_id => 3,
        :creator_id => 4,
        :modifier_id => 5
      )
    ])
  end

  it "renders a list of sprints" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
  end
end
