require 'spec_helper'

describe "sprint_activity_types/index" do
  before(:each) do
    assign(:sprint_activity_types, [
      stub_model(SprintActivityType,
        :name => "Name",
        :format => "Format"
      ),
      stub_model(SprintActivityType,
        :name => "Name",
        :format => "Format"
      )
    ])
  end

  it "renders a list of sprint_activity_types" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Format".to_s, :count => 2
  end
end
