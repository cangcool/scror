require 'spec_helper'

describe "charts/edit" do
  before(:each) do
    @chart = assign(:chart, stub_model(Chart,
      :name => "MyString",
      :max_x => 1,
      :min_x => 1,
      :max_y => 1,
      :min_y => 1
    ))
  end

  it "renders the edit chart form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", chart_path(@chart), "post" do
      assert_select "input#chart_name[name=?]", "chart[name]"
      assert_select "input#chart_max_x[name=?]", "chart[max_x]"
      assert_select "input#chart_min_x[name=?]", "chart[min_x]"
      assert_select "input#chart_max_y[name=?]", "chart[max_y]"
      assert_select "input#chart_min_y[name=?]", "chart[min_y]"
    end
  end
end
