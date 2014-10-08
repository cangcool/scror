require "spec_helper"

describe DemoUsersController do
  describe "routing" do

    it "routes to #index" do
      get("/demo_users").should route_to("demo_users#index")
    end

    it "routes to #new" do
      get("/demo_users/new").should route_to("demo_users#new")
    end

    it "routes to #show" do
      get("/demo_users/1").should route_to("demo_users#show", :id => "1")
    end

    it "routes to #edit" do
      get("/demo_users/1/edit").should route_to("demo_users#edit", :id => "1")
    end

    it "routes to #create" do
      post("/demo_users").should route_to("demo_users#create")
    end

    it "routes to #update" do
      put("/demo_users/1").should route_to("demo_users#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/demo_users/1").should route_to("demo_users#destroy", :id => "1")
    end

  end
end
