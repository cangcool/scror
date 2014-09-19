require "spec_helper"

describe SprintActivityTypesController do
  describe "routing" do

    it "routes to #index" do
      get("/sprint_activity_types").should route_to("sprint_activity_types#index")
    end

    it "routes to #new" do
      get("/sprint_activity_types/new").should route_to("sprint_activity_types#new")
    end

    it "routes to #show" do
      get("/sprint_activity_types/1").should route_to("sprint_activity_types#show", :id => "1")
    end

    it "routes to #edit" do
      get("/sprint_activity_types/1/edit").should route_to("sprint_activity_types#edit", :id => "1")
    end

    it "routes to #create" do
      post("/sprint_activity_types").should route_to("sprint_activity_types#create")
    end

    it "routes to #update" do
      put("/sprint_activity_types/1").should route_to("sprint_activity_types#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/sprint_activity_types/1").should route_to("sprint_activity_types#destroy", :id => "1")
    end

  end
end
