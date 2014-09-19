require "spec_helper"

describe DefaultBoardColumnsController do
  describe "routing" do

    it "routes to #index" do
      get("/default_board_columns").should route_to("default_board_columns#index")
    end

    it "routes to #new" do
      get("/default_board_columns/new").should route_to("default_board_columns#new")
    end

    it "routes to #show" do
      get("/default_board_columns/1").should route_to("default_board_columns#show", :id => "1")
    end

    it "routes to #edit" do
      get("/default_board_columns/1/edit").should route_to("default_board_columns#edit", :id => "1")
    end

    it "routes to #create" do
      post("/default_board_columns").should route_to("default_board_columns#create")
    end

    it "routes to #update" do
      put("/default_board_columns/1").should route_to("default_board_columns#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/default_board_columns/1").should route_to("default_board_columns#destroy", :id => "1")
    end

  end
end
