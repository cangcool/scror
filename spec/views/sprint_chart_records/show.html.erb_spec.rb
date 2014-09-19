require 'spec_helper'

describe "sprint_chart_records/show" do
  before(:each) do
    @sprint_chart_record = assign(:sprint_chart_record, stub_model(SprintChartRecord,
      :sprint_board_column_id => 1,
      :task_total => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
