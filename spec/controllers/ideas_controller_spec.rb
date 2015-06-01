require 'rails_helper'

describe IdeasController do 
  #let(:idea) { idea.create!(name: 'test idea 1') }

  describe "#new" do
    it "is successfull" do
      get :new
      expect(response).to be_success
    end
  end

  describe "#create" do
    it "adds an idea" do
      post :create, name: idea.name, description: idea.description
      expect(response).to redirct_to(idea_path)
    end
  end

end
