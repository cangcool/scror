require 'spec_helper'

describe "task_positions/new" do
  before(:each) do
    assign(:task_position, stub_model(TaskPosition,
      :task_id => 1,
      :sprint_board_column_id => 1,
      :is_block => false
    ).as_new_record)
  end

  it "renders new task_position form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", task_positions_path, "post" do
      assert_select "input#task_position_task_id[name=?]", "task_position[task_id]"
      assert_select "input#task_position_sprint_board_column_id[name=?]", "task_position[sprint_board_column_id]"
      assert_select "input#task_position_is_block[name=?]", "task_position[is_block]"
    end
  end
end
