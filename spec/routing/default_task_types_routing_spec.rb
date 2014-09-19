require "spec_helper"

describe DefaultTaskTypesController do
  describe "routing" do

    it "routes to #index" do
      get("/default_task_types").should route_to("default_task_types#index")
    end

    it "routes to #new" do
      get("/default_task_types/new").should route_to("default_task_types#new")
    end

    it "routes to #show" do
      get("/default_task_types/1").should route_to("default_task_types#show", :id => "1")
    end

    it "routes to #edit" do
      get("/default_task_types/1/edit").should route_to("default_task_types#edit", :id => "1")
    end

    it "routes to #create" do
      post("/default_task_types").should route_to("default_task_types#create")
    end

    it "routes to #update" do
      put("/default_task_types/1").should route_to("default_task_types#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/default_task_types/1").should route_to("default_task_types#destroy", :id => "1")
    end

  end
end
