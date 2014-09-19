require "spec_helper"

describe TaskPositionsController do
  describe "routing" do

    it "routes to #index" do
      get("/task_positions").should route_to("task_positions#index")
    end

    it "routes to #new" do
      get("/task_positions/new").should route_to("task_positions#new")
    end

    it "routes to #show" do
      get("/task_positions/1").should route_to("task_positions#show", :id => "1")
    end

    it "routes to #edit" do
      get("/task_positions/1/edit").should route_to("task_positions#edit", :id => "1")
    end

    it "routes to #create" do
      post("/task_positions").should route_to("task_positions#create")
    end

    it "routes to #update" do
      put("/task_positions/1").should route_to("task_positions#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/task_positions/1").should route_to("task_positions#destroy", :id => "1")
    end

  end
end
