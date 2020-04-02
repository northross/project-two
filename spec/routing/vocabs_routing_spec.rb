require "rails_helper"

RSpec.describe VocabsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/vocabs").to route_to("vocabs#index")
    end


    it "routes to #show" do
      expect(:get => "/vocabs/1").to route_to("vocabs#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/vocabs").to route_to("vocabs#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/vocabs/1").to route_to("vocabs#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/vocabs/1").to route_to("vocabs#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/vocabs/1").to route_to("vocabs#destroy", :id => "1")
    end

  end
end
