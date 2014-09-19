require 'spec_helper'

describe "task_positions/index" do
  before(:each) do
    assign(:task_positions, [
      stub_model(TaskPosition,
        :task_id => 1,
        :sprint_board_column_id => 2,
        :is_block => false
      ),
      stub_model(TaskPosition,
        :task_id => 1,
        :sprint_board_column_id => 2,
        :is_block => false
      )
    ])
  end

  it "renders a list of task_positions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
