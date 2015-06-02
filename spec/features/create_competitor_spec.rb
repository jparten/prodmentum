require 'spec_helper' 

describe "creating a competitor" do 


  context "with valid parameters" do 
    let(:user) { create(:user) }

    before do
      login_as(user)
    end

    before do 
      visit "/competitors/new"
      fill_in "competitor[name]", with: "Test Competitor 1" 
      fill_in "competitor[description]", with: "Test Competitor Description" 
      fill_in "Address", with: "1 Infinite Way" 
      fill_in "City", with: "Cupertino" 
      fill_in "State", with: "East Washington" 
      fill_in "Zip", with: "98032" 
      fill_in "Country", with: "Zimbabwe" 
      click_button 'Save Competitor'
    end 

    it "tells the user they have a new competitor" do 
      expect(page).to have_content "Thanks for adding this competitor"
    end 

    it "sends user to the competitor show page" do 
      expect(page).to have_content "Test Competitor 1" 
    end 

  end 

end 