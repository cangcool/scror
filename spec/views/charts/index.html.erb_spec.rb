require 'spec_helper'

describe "charts/index" do
  before(:each) do
    assign(:charts, [
      stub_model(Chart,
        :name => "Name",
        :max_x => 1,
        :min_x => 2,
        :max_y => 3,
        :min_y => 4
      ),
      stub_model(Chart,
        :name => "Name",
        :max_x => 1,
        :min_x => 2,
        :max_y => 3,
        :min_y => 4
      )
    ])
  end

  it "renders a list of charts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end
