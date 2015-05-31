require 'rails_helper' 

describe "creating an idea" do 

  context "with valid parameters" do 
    let(:user) { create(:user) }

    before do 
      visit "/ideas/new"
      fill_in "Name", with: "Test Idea 1" 
      fill_in "Description", with: "Test Idea Description" 
      fill_in "image", with: "File.open(File.join(Rails.root, 'app/assets/images/default.png'))"
    end 

    it "tells the user they have a new idea" do 
      expect(page).to have_content "Your idea has been successfully created."
    end 

    it "sends user to the product show page" do 
      expect(page).to have_content "#{idea.name}" 
    end 

  end 

end 