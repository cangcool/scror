require 'spec_helper'

describe "task_position_people/edit" do
  before(:each) do
    @task_position_person = assign(:task_position_person, stub_model(TaskPositionPerson,
      :task_position_id => 1,
      :user_id => 1,
      :assigner_id => 1
    ))
  end

  it "renders the edit task_position_person form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", task_position_person_path(@task_position_person), "post" do
      assert_select "input#task_position_person_task_position_id[name=?]", "task_position_person[task_position_id]"
      assert_select "input#task_position_person_user_id[name=?]", "task_position_person[user_id]"
      assert_select "input#task_position_person_assigner_id[name=?]", "task_position_person[assigner_id]"
    end
  end
end
