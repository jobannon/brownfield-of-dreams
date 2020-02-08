require 'rails_helper'

describe "As a User, when I visit my dashboard" do
  context "I see a button to 'Connect to Github'" do
    it "I go through the OAuth process, am redirected to my dashboard, and see My Github Section", :vcr do
      OmniAuth.config.test_mode = true
      OmniAuth.config.mock_auth[:github] = OmniAuth::AuthHash.new(
        {
        :provider => 'github',
        :uid => '12345678',
        :credentials => {:token => '44dcac4bd9d15d2991c0dcf46eb9bf6bccd4a594'},
        :extra => {:raw_info => {:login => 'testlogin'}}
      })
      user = create(:user)

      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

      visit '/dashboard'

      click_on "Connect to Github"

      expect(current_path).to eq(dashboard_path)
      user = User.last
      binding.pry
      expect(user.github_token).to eq('44dcac4bd9d15d2991c0dcf46eb9bf6bccd4a594')
      expect(user.github_username).to eq('testlogin')
    end
  end
end
