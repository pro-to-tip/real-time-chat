require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the SessionsHelper. For example:
#
# describe SessionsHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe SessionsHelper, type: :helper do
  describe "#login" do
    it "adds the user's id to the session" do
      user = create(:user)
      helper.login(user)
      expect(session[:user_id]).to eq user.id
    end
  end

  describe "#current_user" do
    it "returns nil if the user's id session variable isn't set" do
      session[:user_id] = nil
      expect(helper.current_user).to eq nil
    end

    it "returns the correct user if a valid id is set as the user id session variable" do
      user = create(:user)
      session[:user_id] = user.id
      expect(helper.current_user).to eq user
    end

    it "returns nil if an invalid id is set as the user id session variable" do
      session[:user_id] = 2 # ID of 2 doesn't exist
      expect(helper.current_user).to eq nil
    end
  end

  describe "#logged_in" do
    it "returns true if a user is logged in" do
      user = create(:user)
      login(user)
      expect(helper.logged_in).to eq true
    end
    it "returns false if a user is not logged in" do
      expect(helper.logged_in).to eq false
    end
  end
end

