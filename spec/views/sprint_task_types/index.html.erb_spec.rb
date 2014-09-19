require 'spec_helper'

describe "sprint_task_types/index" do
  before(:each) do
    assign(:sprint_task_types, [
      stub_model(SprintTaskType,
        :name => "Name",
        :sprint_id => 1,
        :color_code => "Color Code",
        :user_id => 2
      ),
      stub_model(SprintTaskType,
        :name => "Name",
        :sprint_id => 1,
        :color_code => "Color Code",
        :user_id => 2
      )
    ])
  end

  it "renders a list of sprint_task_types" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Color Code".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
