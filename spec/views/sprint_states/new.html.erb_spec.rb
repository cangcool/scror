require 'spec_helper'

describe "sprint_states/new" do
  before(:each) do
    assign(:sprint_state, stub_model(SprintState,
      :name => "MyString",
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new sprint_state form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", sprint_states_path, "post" do
      assert_select "input#sprint_state_name[name=?]", "sprint_state[name]"
      assert_select "textarea#sprint_state_description[name=?]", "sprint_state[description]"
    end
  end
end
