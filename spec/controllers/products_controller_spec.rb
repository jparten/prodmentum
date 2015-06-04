require 'rails_helper'

describe ProductsController do 
  let(:product) { create(:product) }
  let(:user) { create(:user) }

  describe "#new" do
    it "is successful" do
      sign_in user
      get :new
      expect(response).to be_success
    end
  end
end 