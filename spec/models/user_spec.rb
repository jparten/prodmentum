require 'rails_helper'

describe "A user" do 
  let(:user) { create(:user) }

  it "has a valid factory" do 
    expect(user).to be_valid 
  end 

end 

