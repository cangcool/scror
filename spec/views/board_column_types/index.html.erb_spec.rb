require 'spec_helper'

describe "board_column_types/index" do
  before(:each) do
    assign(:board_column_types, [
      stub_model(BoardColumnType,
        :name => "Name",
        :description => "MyText",
        :is_charted => false
      ),
      stub_model(BoardColumnType,
        :name => "Name",
        :description => "MyText",
        :is_charted => false
      )
    ])
  end

  it "renders a list of board_column_types" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
