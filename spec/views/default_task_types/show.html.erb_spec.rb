require 'spec_helper'

describe "default_task_types/show" do
  before(:each) do
    @default_task_type = assign(:default_task_type, stub_model(DefaultTaskType,
      :name => "Name",
      :color_code => "Color Code"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Color Code/)
  end
end
