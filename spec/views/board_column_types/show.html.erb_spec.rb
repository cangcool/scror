require 'spec_helper'

describe "board_column_types/show" do
  before(:each) do
    @board_column_type = assign(:board_column_type, stub_model(BoardColumnType,
      :name => "Name",
      :description => "MyText",
      :is_charted => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
    rendered.should match(/false/)
  end
end
