require 'rails_helper'

RSpec.describe User, type: :model do
  it "can create a new user" do
    user = create(:user)
    expect(user.name).to eq 'John Doe'
    expect(user.username).to eq 'JohnDoe'
    expect(user.image).to eq 'link-to-image'
  end
end
