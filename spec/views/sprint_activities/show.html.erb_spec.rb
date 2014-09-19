require 'spec_helper'

describe "sprint_activities/show" do
  before(:each) do
    @sprint_activity = assign(:sprint_activity, stub_model(SprintActivity,
      :content => "Content",
      :spint_id => 1,
      :sprint_activity_type_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Content/)
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
