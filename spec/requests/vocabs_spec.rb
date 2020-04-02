require 'rails_helper'

RSpec.describe "Vocabs", type: :request do
  describe "GET /vocabs" do
    it "works! (now write some real specs)" do
      get vocabs_path
      expect(response).to have_http_status(200)
    end
  end
end
