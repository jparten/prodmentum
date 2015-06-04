require 'rails_helper'

describe IdeasController do 
  let(:idea) { create(:idea) }
  let(:user) { create(:user) }

  describe "#new" do
    it "is successful" do
      sign_in user
      get :new
      expect(response).to be_success
    end
  end
end
