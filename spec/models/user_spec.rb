require 'rails_helper'

RSpec.describe User, type: :model do
  it "can create a new user" do
    user = User.create(name: 'John', email: 'test@johndoe.com')
    expect(user.name).to eq 'John'
  end
end
