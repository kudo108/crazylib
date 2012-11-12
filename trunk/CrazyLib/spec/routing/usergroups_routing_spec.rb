require "spec_helper"

describe UsergroupsController do
  describe "routing" do

    it "routes to #index" do
      get("/usergroups").should route_to("usergroups#index")
    end

    it "routes to #new" do
      get("/usergroups/new").should route_to("usergroups#new")
    end

    it "routes to #show" do
      get("/usergroups/1").should route_to("usergroups#show", :id => "1")
    end

    it "routes to #edit" do
      get("/usergroups/1/edit").should route_to("usergroups#edit", :id => "1")
    end

    it "routes to #create" do
      post("/usergroups").should route_to("usergroups#create")
    end

    it "routes to #update" do
      put("/usergroups/1").should route_to("usergroups#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/usergroups/1").should route_to("usergroups#destroy", :id => "1")
    end

  end
end
