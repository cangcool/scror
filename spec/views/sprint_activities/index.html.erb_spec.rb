require 'spec_helper'

describe "sprint_activities/index" do
  before(:each) do
    assign(:sprint_activities, [
      stub_model(SprintActivity,
        :content => "Content",
        :spint_id => 1,
        :sprint_activity_type_id => 2
      ),
      stub_model(SprintActivity,
        :content => "Content",
        :spint_id => 1,
        :sprint_activity_type_id => 2
      )
    ])
  end

  it "renders a list of sprint_activities" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Content".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
