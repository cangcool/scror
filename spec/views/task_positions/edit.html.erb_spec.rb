require 'spec_helper'

describe "task_positions/edit" do
  before(:each) do
    @task_position = assign(:task_position, stub_model(TaskPosition,
      :task_id => 1,
      :sprint_board_column_id => 1,
      :is_block => false
    ))
  end

  it "renders the edit task_position form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", task_position_path(@task_position), "post" do
      assert_select "input#task_position_task_id[name=?]", "task_position[task_id]"
      assert_select "input#task_position_sprint_board_column_id[name=?]", "task_position[sprint_board_column_id]"
      assert_select "input#task_position_is_block[name=?]", "task_position[is_block]"
    end
  end
end
