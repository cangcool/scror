require 'spec_helper'

describe "sprint_states/show" do
  before(:each) do
    @sprint_state = assign(:sprint_state, stub_model(SprintState,
      :name => "Name",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
  end
end
