require "spec_helper"

describe SignUpUsersController do
  describe "routing" do

    it "routes to #index" do
      get("/sign_up_users").should route_to("sign_up_users#index")
    end

    it "routes to #new" do
      get("/sign_up_users/new").should route_to("sign_up_users#new")
    end

    it "routes to #show" do
      get("/sign_up_users/1").should route_to("sign_up_users#show", :id => "1")
    end

    it "routes to #edit" do
      get("/sign_up_users/1/edit").should route_to("sign_up_users#edit", :id => "1")
    end

    it "routes to #create" do
      post("/sign_up_users").should route_to("sign_up_users#create")
    end

    it "routes to #update" do
      put("/sign_up_users/1").should route_to("sign_up_users#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/sign_up_users/1").should route_to("sign_up_users#destroy", :id => "1")
    end

  end
end
