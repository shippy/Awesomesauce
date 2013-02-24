require "spec_helper"

describe ThoughtsController do
  describe "routing" do

    it "routes to #index" do
      get("/thoughts").should route_to("thoughts#index")
    end

    it "routes to #new" do
      get("/thoughts/new").should route_to("thoughts#new")
    end

    it "routes to #show" do
      get("/thoughts/1").should route_to("thoughts#show", :id => "1")
    end

    it "routes to #edit" do
      get("/thoughts/1/edit").should route_to("thoughts#edit", :id => "1")
    end

    it "routes to #create" do
      post("/thoughts").should route_to("thoughts#create")
    end

    it "routes to #update" do
      put("/thoughts/1").should route_to("thoughts#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/thoughts/1").should route_to("thoughts#destroy", :id => "1")
    end

  end
end
