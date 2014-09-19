require 'spec_helper'

describe "sprint_activities/edit" do
  before(:each) do
    @sprint_activity = assign(:sprint_activity, stub_model(SprintActivity,
      :content => "MyString",
      :spint_id => 1,
      :sprint_activity_type_id => 1
    ))
  end

  it "renders the edit sprint_activity form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", sprint_activity_path(@sprint_activity), "post" do
      assert_select "input#sprint_activity_content[name=?]", "sprint_activity[content]"
      assert_select "input#sprint_activity_spint_id[name=?]", "sprint_activity[spint_id]"
      assert_select "input#sprint_activity_sprint_activity_type_id[name=?]", "sprint_activity[sprint_activity_type_id]"
    end
  end
end
