require 'spec_helper'

describe "tasks/new" do
  before(:each) do
    assign(:task, stub_model(Task,
      :content => "MyText",
      :product_backlog_id => 1,
      :sprint_task_type_id => 1
    ).as_new_record)
  end

  it "renders new task form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", tasks_path, "post" do
      assert_select "textarea#task_content[name=?]", "task[content]"
      assert_select "input#task_product_backlog_id[name=?]", "task[product_backlog_id]"
      assert_select "input#task_sprint_task_type_id[name=?]", "task[sprint_task_type_id]"
    end
  end
end
