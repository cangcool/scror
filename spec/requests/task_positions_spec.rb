require 'spec_helper'

describe "TaskPositions" do
  describe "GET /task_positions" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get task_positions_path
      response.status.should be(200)
    end
  end
end
