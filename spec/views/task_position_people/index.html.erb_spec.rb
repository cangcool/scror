require 'spec_helper'

describe "task_position_people/index" do
  before(:each) do
    assign(:task_position_people, [
      stub_model(TaskPositionPerson,
        :task_position_id => 1,
        :user_id => 2,
        :assigner_id => 3
      ),
      stub_model(TaskPositionPerson,
        :task_position_id => 1,
        :user_id => 2,
        :assigner_id => 3
      )
    ])
  end

  it "renders a list of task_position_people" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
