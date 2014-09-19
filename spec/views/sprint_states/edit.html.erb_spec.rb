require 'spec_helper'

describe "sprint_states/edit" do
  before(:each) do
    @sprint_state = assign(:sprint_state, stub_model(SprintState,
      :name => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit sprint_state form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", sprint_state_path(@sprint_state), "post" do
      assert_select "input#sprint_state_name[name=?]", "sprint_state[name]"
      assert_select "textarea#sprint_state_description[name=?]", "sprint_state[description]"
    end
  end
end
