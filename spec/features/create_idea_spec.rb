require 'spec_helper' 

describe "creating an idea" do 


  context "with valid parameters" do 
    let(:user) { create(:user) }

    before do
      login_as(user)
    end

    before do 
      visit "/ideas/new"
      fill_in "idea[name]", with: "Test Idea 1" 
      fill_in "idea[description]", with: "Test Idea Description" 
      click_button 'Save Idea'
    end 

    it "tells the user they have a new idea" do 
      expect(page).to have_content "Thanks for sharing your idea"
    end 

    it "sends user to the idea show page" do 
      expect(page).to have_content "Test Idea 1" 
    end 

  end 

end 