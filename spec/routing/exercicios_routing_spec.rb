require "rails_helper"

RSpec.describe ExerciciosController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/exercicios").to route_to("exercicios#index")
    end

    it "routes to #new" do
      expect(:get => "/exercicios/new").to route_to("exercicios#new")
    end

    it "routes to #show" do
      expect(:get => "/exercicios/1").to route_to("exercicios#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/exercicios/1/edit").to route_to("exercicios#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/exercicios").to route_to("exercicios#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/exercicios/1").to route_to("exercicios#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/exercicios/1").to route_to("exercicios#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/exercicios/1").to route_to("exercicios#destroy", :id => "1")
    end
  end
end
