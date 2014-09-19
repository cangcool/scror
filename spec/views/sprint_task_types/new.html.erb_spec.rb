require 'spec_helper'

describe "sprint_task_types/new" do
  before(:each) do
    assign(:sprint_task_type, stub_model(SprintTaskType,
      :name => "MyString",
      :sprint_id => 1,
      :color_code => "MyString",
      :user_id => 1
    ).as_new_record)
  end

  it "renders new sprint_task_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", sprint_task_types_path, "post" do
      assert_select "input#sprint_task_type_name[name=?]", "sprint_task_type[name]"
      assert_select "input#sprint_task_type_sprint_id[name=?]", "sprint_task_type[sprint_id]"
      assert_select "input#sprint_task_type_color_code[name=?]", "sprint_task_type[color_code]"
      assert_select "input#sprint_task_type_user_id[name=?]", "sprint_task_type[user_id]"
    end
  end
end
