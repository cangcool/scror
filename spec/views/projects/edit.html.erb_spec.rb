require 'spec_helper'

describe "projects/edit" do
  before(:each) do
    @project = assign(:project, stub_model(Project,
      :name => "MyString",
      :description => "MyText",
      :is_active => false,
      :user_id => 1,
      :company_id => 1,
      :project_type_id => 1
    ))
  end

  it "renders the edit project form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", project_path(@project), "post" do
      assert_select "input#project_name[name=?]", "project[name]"
      assert_select "textarea#project_description[name=?]", "project[description]"
      assert_select "input#project_is_active[name=?]", "project[is_active]"
      assert_select "input#project_user_id[name=?]", "project[user_id]"
      assert_select "input#project_company_id[name=?]", "project[company_id]"
      assert_select "input#project_project_type_id[name=?]", "project[project_type_id]"
    end
  end
end
