require 'spec_helper'

describe "tasks/edit" do
  before(:each) do
    @task = assign(:task, stub_model(Task,
      :content => "MyText",
      :product_backlog_id => 1,
      :sprint_task_type_id => 1
    ))
  end

  it "renders the edit task form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", task_path(@task), "post" do
      assert_select "textarea#task_content[name=?]", "task[content]"
      assert_select "input#task_product_backlog_id[name=?]", "task[product_backlog_id]"
      assert_select "input#task_sprint_task_type_id[name=?]", "task[sprint_task_type_id]"
    end
  end
end
