require 'spec_helper'

describe "default_board_columns/show" do
  before(:each) do
    @default_board_column = assign(:default_board_column, stub_model(DefaultBoardColumn,
      :name => "Name",
      :description => "MyText",
      :boardcolumn_type_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
    rendered.should match(/1/)
  end
end
