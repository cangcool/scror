require 'spec_helper'

describe "user_projects/show" do
  before(:each) do
    @user_project = assign(:user_project, stub_model(UserProject,
      :user_id => 1,
      :project_id => 2,
      :user_role_id => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
  end
end
