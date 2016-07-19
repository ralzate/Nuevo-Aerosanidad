require "rails_helper"

RSpec.describe EmergenciasController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/emergencias").to route_to("emergencias#index")
    end

    it "routes to #new" do
      expect(:get => "/emergencias/new").to route_to("emergencias#new")
    end

    it "routes to #show" do
      expect(:get => "/emergencias/1").to route_to("emergencias#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/emergencias/1/edit").to route_to("emergencias#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/emergencias").to route_to("emergencias#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/emergencias/1").to route_to("emergencias#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/emergencias/1").to route_to("emergencias#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/emergencias/1").to route_to("emergencias#destroy", :id => "1")
    end

  end
end
