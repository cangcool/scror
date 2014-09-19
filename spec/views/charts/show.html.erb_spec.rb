require 'spec_helper'

describe "charts/show" do
  before(:each) do
    @chart = assign(:chart, stub_model(Chart,
      :name => "Name",
      :max_x => 1,
      :min_x => 2,
      :max_y => 3,
      :min_y => 4
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/4/)
  end
end
