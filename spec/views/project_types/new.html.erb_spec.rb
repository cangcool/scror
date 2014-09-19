require 'spec_helper'

describe "project_types/new" do
  before(:each) do
    assign(:project_type, stub_model(ProjectType,
      :name => "MyString",
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new project_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", project_types_path, "post" do
      assert_select "input#project_type_name[name=?]", "project_type[name]"
      assert_select "textarea#project_type_description[name=?]", "project_type[description]"
    end
  end
end
