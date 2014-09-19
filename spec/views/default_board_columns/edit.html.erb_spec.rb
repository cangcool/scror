require 'spec_helper'

describe "default_board_columns/edit" do
  before(:each) do
    @default_board_column = assign(:default_board_column, stub_model(DefaultBoardColumn,
      :name => "MyString",
      :description => "MyText",
      :boardcolumn_type_id => 1
    ))
  end

  it "renders the edit default_board_column form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", default_board_column_path(@default_board_column), "post" do
      assert_select "input#default_board_column_name[name=?]", "default_board_column[name]"
      assert_select "textarea#default_board_column_description[name=?]", "default_board_column[description]"
      assert_select "input#default_board_column_boardcolumn_type_id[name=?]", "default_board_column[boardcolumn_type_id]"
    end
  end
end
