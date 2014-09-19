require 'spec_helper'

describe "sprint_chart_records/index" do
  before(:each) do
    assign(:sprint_chart_records, [
      stub_model(SprintChartRecord,
        :sprint_board_column_id => 1,
        :task_total => 2
      ),
      stub_model(SprintChartRecord,
        :sprint_board_column_id => 1,
        :task_total => 2
      )
    ])
  end

  it "renders a list of sprint_chart_records" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
