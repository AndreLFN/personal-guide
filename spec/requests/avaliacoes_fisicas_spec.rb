require 'rails_helper'

RSpec.describe "AvaliacoesFisicas", type: :request do
  describe "GET /avaliacoes_fisicas" do
    it "works! (now write some real specs)" do
      get avaliacoes_fisicas_path
      expect(response).to have_http_status(200)
    end
  end
end
