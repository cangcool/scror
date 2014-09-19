require "spec_helper"

describe SprintActivitiesController do
  describe "routing" do

    it "routes to #index" do
      get("/sprint_activities").should route_to("sprint_activities#index")
    end

    it "routes to #new" do
      get("/sprint_activities/new").should route_to("sprint_activities#new")
    end

    it "routes to #show" do
      get("/sprint_activities/1").should route_to("sprint_activities#show", :id => "1")
    end

    it "routes to #edit" do
      get("/sprint_activities/1/edit").should route_to("sprint_activities#edit", :id => "1")
    end

    it "routes to #create" do
      post("/sprint_activities").should route_to("sprint_activities#create")
    end

    it "routes to #update" do
      put("/sprint_activities/1").should route_to("sprint_activities#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/sprint_activities/1").should route_to("sprint_activities#destroy", :id => "1")
    end

  end
end
