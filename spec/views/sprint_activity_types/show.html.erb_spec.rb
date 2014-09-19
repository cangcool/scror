require 'spec_helper'

describe "sprint_activity_types/show" do
  before(:each) do
    @sprint_activity_type = assign(:sprint_activity_type, stub_model(SprintActivityType,
      :name => "Name",
      :format => "Format"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Format/)
  end
end
