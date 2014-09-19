require 'spec_helper'

describe "task_position_people/show" do
  before(:each) do
    @task_position_person = assign(:task_position_person, stub_model(TaskPositionPerson,
      :task_position_id => 1,
      :user_id => 2,
      :assigner_id => 3
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
