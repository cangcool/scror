require 'spec_helper'

describe "sprint_board_columns/edit" do
  before(:each) do
    @sprint_board_column = assign(:sprint_board_column, stub_model(SprintBoardColumn,
      :name => "MyString",
      :description => "MyText",
      :sprint_id => 1,
      :user_id => 1,
      :boardcolumn_type_id => 1
    ))
  end

  it "renders the edit sprint_board_column form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", sprint_board_column_path(@sprint_board_column), "post" do
      assert_select "input#sprint_board_column_name[name=?]", "sprint_board_column[name]"
      assert_select "textarea#sprint_board_column_description[name=?]", "sprint_board_column[description]"
      assert_select "input#sprint_board_column_sprint_id[name=?]", "sprint_board_column[sprint_id]"
      assert_select "input#sprint_board_column_user_id[name=?]", "sprint_board_column[user_id]"
      assert_select "input#sprint_board_column_boardcolumn_type_id[name=?]", "sprint_board_column[boardcolumn_type_id]"
    end
  end
end
