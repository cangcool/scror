require 'spec_helper'

describe "sprint_board_columns/show" do
  before(:each) do
    @sprint_board_column = assign(:sprint_board_column, stub_model(SprintBoardColumn,
      :name => "Name",
      :description => "MyText",
      :sprint_id => 1,
      :user_id => 2,
      :boardcolumn_type_id => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
  end
end
