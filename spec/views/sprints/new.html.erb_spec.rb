require 'spec_helper'

describe "sprints/new" do
  before(:each) do
    assign(:sprint, stub_model(Sprint,
      :name => "MyString",
      :description => "MyText",
      :project_id => 1,
      :sprint_order_number => 1,
      :sprint_state_id => 1,
      :creator_id => 1,
      :modifier_id => 1
    ).as_new_record)
  end

  it "renders new sprint form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", sprints_path, "post" do
      assert_select "input#sprint_name[name=?]", "sprint[name]"
      assert_select "textarea#sprint_description[name=?]", "sprint[description]"
      assert_select "input#sprint_project_id[name=?]", "sprint[project_id]"
      assert_select "input#sprint_sprint_order_number[name=?]", "sprint[sprint_order_number]"
      assert_select "input#sprint_sprint_state_id[name=?]", "sprint[sprint_state_id]"
      assert_select "input#sprint_creator_id[name=?]", "sprint[creator_id]"
      assert_select "input#sprint_modifier_id[name=?]", "sprint[modifier_id]"
    end
  end
end
