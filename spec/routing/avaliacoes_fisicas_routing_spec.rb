require "rails_helper"

RSpec.describe AvaliacoesFisicasController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/avaliacoes_fisicas").to route_to("avaliacoes_fisicas#index")
    end

    it "routes to #new" do
      expect(:get => "/avaliacoes_fisicas/new").to route_to("avaliacoes_fisicas#new")
    end

    it "routes to #show" do
      expect(:get => "/avaliacoes_fisicas/1").to route_to("avaliacoes_fisicas#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/avaliacoes_fisicas/1/edit").to route_to("avaliacoes_fisicas#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/avaliacoes_fisicas").to route_to("avaliacoes_fisicas#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/avaliacoes_fisicas/1").to route_to("avaliacoes_fisicas#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/avaliacoes_fisicas/1").to route_to("avaliacoes_fisicas#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/avaliacoes_fisicas/1").to route_to("avaliacoes_fisicas#destroy", :id => "1")
    end
  end
end
