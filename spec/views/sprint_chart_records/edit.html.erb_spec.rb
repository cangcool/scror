require 'spec_helper'

describe "sprint_chart_records/edit" do
  before(:each) do
    @sprint_chart_record = assign(:sprint_chart_record, stub_model(SprintChartRecord,
      :sprint_board_column_id => 1,
      :task_total => 1
    ))
  end

  it "renders the edit sprint_chart_record form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", sprint_chart_record_path(@sprint_chart_record), "post" do
      assert_select "input#sprint_chart_record_sprint_board_column_id[name=?]", "sprint_chart_record[sprint_board_column_id]"
      assert_select "input#sprint_chart_record_task_total[name=?]", "sprint_chart_record[task_total]"
    end
  end
end
