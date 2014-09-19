require 'spec_helper'

describe "sprint_task_types/show" do
  before(:each) do
    @sprint_task_type = assign(:sprint_task_type, stub_model(SprintTaskType,
      :name => "Name",
      :sprint_id => 1,
      :color_code => "Color Code",
      :user_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
    rendered.should match(/Color Code/)
    rendered.should match(/2/)
  end
end
