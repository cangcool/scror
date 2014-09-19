require "spec_helper"

describe ProductBacklogsController do
  describe "routing" do

    it "routes to #index" do
      get("/product_backlogs").should route_to("product_backlogs#index")
    end

    it "routes to #new" do
      get("/product_backlogs/new").should route_to("product_backlogs#new")
    end

    it "routes to #show" do
      get("/product_backlogs/1").should route_to("product_backlogs#show", :id => "1")
    end

    it "routes to #edit" do
      get("/product_backlogs/1/edit").should route_to("product_backlogs#edit", :id => "1")
    end

    it "routes to #create" do
      post("/product_backlogs").should route_to("product_backlogs#create")
    end

    it "routes to #update" do
      put("/product_backlogs/1").should route_to("product_backlogs#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/product_backlogs/1").should route_to("product_backlogs#destroy", :id => "1")
    end

  end
end
