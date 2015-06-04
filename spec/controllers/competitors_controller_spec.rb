require 'rails_helper'

describe CompetitorsController do 
  let(:user) { create(:user) }
  let(:competitor) { create(:competitor) }

  describe "#new" do
    it "is successful" do
      sign_in user
      get :new
      expect(response).to be_success
    end
  end
end 
