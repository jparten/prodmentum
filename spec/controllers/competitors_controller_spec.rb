require 'rails_helper'

describe CompetitorsController do 

  #let(:competitor) { competitor.create!(name: 'test competitor') }

  describe "#new" do
    it "is successfull" do
      get :new
      expect(response).to be_success
    end
  end


  describe "#create" do
    it "adds a competitor" do
      post :create, name: competitor.name, description: competitor.description
      expect(response).to redirct_to(competitor_path)
    end
  end
end 
