require 'spec_helper'

describe "default_task_types/index" do
  before(:each) do
    assign(:default_task_types, [
      stub_model(DefaultTaskType,
        :name => "Name",
        :color_code => "Color Code"
      ),
      stub_model(DefaultTaskType,
        :name => "Name",
        :color_code => "Color Code"
      )
    ])
  end

  it "renders a list of default_task_types" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Color Code".to_s, :count => 2
  end
end
