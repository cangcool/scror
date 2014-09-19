require "spec_helper"

describe TaskPositionPeopleController do
  describe "routing" do

    it "routes to #index" do
      get("/task_position_people").should route_to("task_position_people#index")
    end

    it "routes to #new" do
      get("/task_position_people/new").should route_to("task_position_people#new")
    end

    it "routes to #show" do
      get("/task_position_people/1").should route_to("task_position_people#show", :id => "1")
    end

    it "routes to #edit" do
      get("/task_position_people/1/edit").should route_to("task_position_people#edit", :id => "1")
    end

    it "routes to #create" do
      post("/task_position_people").should route_to("task_position_people#create")
    end

    it "routes to #update" do
      put("/task_position_people/1").should route_to("task_position_people#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/task_position_people/1").should route_to("task_position_people#destroy", :id => "1")
    end

  end
end
