require 'spec_helper'

describe "sprint_board_columns/index" do
  before(:each) do
    assign(:sprint_board_columns, [
      stub_model(SprintBoardColumn,
        :name => "Name",
        :description => "MyText",
        :sprint_id => 1,
        :user_id => 2,
        :boardcolumn_type_id => 3
      ),
      stub_model(SprintBoardColumn,
        :name => "Name",
        :description => "MyText",
        :sprint_id => 1,
        :user_id => 2,
        :boardcolumn_type_id => 3
      )
    ])
  end

  it "renders a list of sprint_board_columns" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
