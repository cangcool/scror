require 'spec_helper'

describe "default_task_types/new" do
  before(:each) do
    assign(:default_task_type, stub_model(DefaultTaskType,
      :name => "MyString",
      :color_code => "MyString"
    ).as_new_record)
  end

  it "renders new default_task_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", default_task_types_path, "post" do
      assert_select "input#default_task_type_name[name=?]", "default_task_type[name]"
      assert_select "input#default_task_type_color_code[name=?]", "default_task_type[color_code]"
    end
  end
end
