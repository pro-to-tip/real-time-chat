require 'rails_helper'

RSpec.describe User, type: :model do
  it "can create a new user" do
    user = User.create(name: 'John', username: 'JohnDoe', image: 'link-to-image')
    expect(user.name).to eq 'John'
    expect(user.username).to eq 'JohnDoe'
    expect(user.image).to eq 'link-to-image'
  end
end
