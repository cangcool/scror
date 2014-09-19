require 'spec_helper'

describe "sprint_activity_types/edit" do
  before(:each) do
    @sprint_activity_type = assign(:sprint_activity_type, stub_model(SprintActivityType,
      :name => "MyString",
      :format => "MyString"
    ))
  end

  it "renders the edit sprint_activity_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", sprint_activity_type_path(@sprint_activity_type), "post" do
      assert_select "input#sprint_activity_type_name[name=?]", "sprint_activity_type[name]"
      assert_select "input#sprint_activity_type_format[name=?]", "sprint_activity_type[format]"
    end
  end
end
