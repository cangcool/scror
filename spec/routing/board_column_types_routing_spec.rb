require "spec_helper"

describe BoardColumnTypesController do
  describe "routing" do

    it "routes to #index" do
      get("/board_column_types").should route_to("board_column_types#index")
    end

    it "routes to #new" do
      get("/board_column_types/new").should route_to("board_column_types#new")
    end

    it "routes to #show" do
      get("/board_column_types/1").should route_to("board_column_types#show", :id => "1")
    end

    it "routes to #edit" do
      get("/board_column_types/1/edit").should route_to("board_column_types#edit", :id => "1")
    end

    it "routes to #create" do
      post("/board_column_types").should route_to("board_column_types#create")
    end

    it "routes to #update" do
      put("/board_column_types/1").should route_to("board_column_types#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/board_column_types/1").should route_to("board_column_types#destroy", :id => "1")
    end

  end
end
