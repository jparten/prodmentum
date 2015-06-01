require 'rails_helper' 

describe "creating a competitor" do 

  context "with valid parameters" do 
    let(:user) { create(:user) }

    before do 
      visit "/products/new"
      fill_in "Name", with: "Test Competitor 1" 
      fill_in "Description", with: "Test Competitor Description" 
      fill_in "image", with: "File.open(File.join(Rails.root, 'app/assets/images/default.png'))"
    end 

    it "tells the user they have a new competitor" do 
      expect(page).to have_content "Your competitor has been successfully created."
    end 

    it "sends user to the product show page" do 
      expect(page).to have_content "#{competitor.name}" 
    end 

  end 

end 