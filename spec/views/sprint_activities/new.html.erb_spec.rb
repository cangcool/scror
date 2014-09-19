require 'spec_helper'

describe "sprint_activities/new" do
  before(:each) do
    assign(:sprint_activity, stub_model(SprintActivity,
      :content => "MyString",
      :spint_id => 1,
      :sprint_activity_type_id => 1
    ).as_new_record)
  end

  it "renders new sprint_activity form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", sprint_activities_path, "post" do
      assert_select "input#sprint_activity_content[name=?]", "sprint_activity[content]"
      assert_select "input#sprint_activity_spint_id[name=?]", "sprint_activity[spint_id]"
      assert_select "input#sprint_activity_sprint_activity_type_id[name=?]", "sprint_activity[sprint_activity_type_id]"
    end
  end
end
