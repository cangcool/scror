require "spec_helper"

describe SprintChartRecordsController do
  describe "routing" do

    it "routes to #index" do
      get("/sprint_chart_records").should route_to("sprint_chart_records#index")
    end

    it "routes to #new" do
      get("/sprint_chart_records/new").should route_to("sprint_chart_records#new")
    end

    it "routes to #show" do
      get("/sprint_chart_records/1").should route_to("sprint_chart_records#show", :id => "1")
    end

    it "routes to #edit" do
      get("/sprint_chart_records/1/edit").should route_to("sprint_chart_records#edit", :id => "1")
    end

    it "routes to #create" do
      post("/sprint_chart_records").should route_to("sprint_chart_records#create")
    end

    it "routes to #update" do
      put("/sprint_chart_records/1").should route_to("sprint_chart_records#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/sprint_chart_records/1").should route_to("sprint_chart_records#destroy", :id => "1")
    end

  end
end
