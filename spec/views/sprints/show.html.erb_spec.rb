require 'spec_helper'

describe "sprints/show" do
  before(:each) do
    @sprint = assign(:sprint, stub_model(Sprint,
      :name => "Name",
      :description => "MyText",
      :project_id => 1,
      :sprint_order_number => 2,
      :sprint_state_id => 3,
      :creator_id => 4,
      :modifier_id => 5
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/4/)
    rendered.should match(/5/)
  end
end
