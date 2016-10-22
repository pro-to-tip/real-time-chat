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
  describe "login" do
    it "adds the user's id to the session" do
      user = create(:user)
      helper.login(user)
      expect(session[:user_id]).to eq user.id
    end
  end
end
