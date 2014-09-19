require 'spec_helper'

describe "default_board_columns/index" do
  before(:each) do
    assign(:default_board_columns, [
      stub_model(DefaultBoardColumn,
        :name => "Name",
        :description => "MyText",
        :boardcolumn_type_id => 1
      ),
      stub_model(DefaultBoardColumn,
        :name => "Name",
        :description => "MyText",
        :boardcolumn_type_id => 1
      )
    ])
  end

  it "renders a list of default_board_columns" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
