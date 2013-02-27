require "spec_helper"

describe CutesController do
  describe "routing" do

    it "routes to #index" do
      get("/cutes").should route_to("cutes#index")
    end

    it "routes to #new" do
      get("/cutes/new").should route_to("cutes#new")
    end

    it "routes to #show" do
      get("/cutes/1").should route_to("cutes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/cutes/1/edit").should route_to("cutes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/cutes").should route_to("cutes#create")
    end

    it "routes to #update" do
      put("/cutes/1").should route_to("cutes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/cutes/1").should route_to("cutes#destroy", :id => "1")
    end

  end
end
