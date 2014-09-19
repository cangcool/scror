require "spec_helper"

describe SprintStatesController do
  describe "routing" do

    it "routes to #index" do
      get("/sprint_states").should route_to("sprint_states#index")
    end

    it "routes to #new" do
      get("/sprint_states/new").should route_to("sprint_states#new")
    end

    it "routes to #show" do
      get("/sprint_states/1").should route_to("sprint_states#show", :id => "1")
    end

    it "routes to #edit" do
      get("/sprint_states/1/edit").should route_to("sprint_states#edit", :id => "1")
    end

    it "routes to #create" do
      post("/sprint_states").should route_to("sprint_states#create")
    end

    it "routes to #update" do
      put("/sprint_states/1").should route_to("sprint_states#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/sprint_states/1").should route_to("sprint_states#destroy", :id => "1")
    end

  end
end
