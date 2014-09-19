require 'spec_helper'

describe "sprint_activity_types/new" do
  before(:each) do
    assign(:sprint_activity_type, stub_model(SprintActivityType,
      :name => "MyString",
      :format => "MyString"
    ).as_new_record)
  end

  it "renders new sprint_activity_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", sprint_activity_types_path, "post" do
      assert_select "input#sprint_activity_type_name[name=?]", "sprint_activity_type[name]"
      assert_select "input#sprint_activity_type_format[name=?]", "sprint_activity_type[format]"
    end
  end
end
