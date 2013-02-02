require "spec_helper"

describe FreeFormatsController do
  describe "routing" do

    it "routes to #index" do
      get("/free_formats").should route_to("free_formats#index")
    end

    it "routes to #new" do
      get("/free_formats/new").should route_to("free_formats#new")
    end

    it "routes to #show" do
      get("/free_formats/1").should route_to("free_formats#show", :id => "1")
    end

    it "routes to #edit" do
      get("/free_formats/1/edit").should route_to("free_formats#edit", :id => "1")
    end

    it "routes to #create" do
      post("/free_formats").should route_to("free_formats#create")
    end

    it "routes to #update" do
      put("/free_formats/1").should route_to("free_formats#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/free_formats/1").should route_to("free_formats#destroy", :id => "1")
    end

  end
end
