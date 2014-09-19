require 'spec_helper'

describe "board_column_types/new" do
  before(:each) do
    assign(:board_column_type, stub_model(BoardColumnType,
      :name => "MyString",
      :description => "MyText",
      :is_charted => false
    ).as_new_record)
  end

  it "renders new board_column_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", board_column_types_path, "post" do
      assert_select "input#board_column_type_name[name=?]", "board_column_type[name]"
      assert_select "textarea#board_column_type_description[name=?]", "board_column_type[description]"
      assert_select "input#board_column_type_is_charted[name=?]", "board_column_type[is_charted]"
    end
  end
end
