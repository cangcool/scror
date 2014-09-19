require 'spec_helper'

describe "task_positions/show" do
  before(:each) do
    @task_position = assign(:task_position, stub_model(TaskPosition,
      :task_id => 1,
      :sprint_board_column_id => 2,
      :is_block => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/false/)
  end
end
