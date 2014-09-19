require 'spec_helper'

describe "tasks/index" do
  before(:each) do
    assign(:tasks, [
      stub_model(Task,
        :content => "MyText",
        :product_backlog_id => 1,
        :sprint_task_type_id => 2
      ),
      stub_model(Task,
        :content => "MyText",
        :product_backlog_id => 1,
        :sprint_task_type_id => 2
      )
    ])
  end

  it "renders a list of tasks" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
