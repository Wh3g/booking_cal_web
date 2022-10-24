require 'rails_helper'

RSpec.describe User, type: :model do
  context do
    email = "name@email.com"
    password = "password"

    it "is valid with valid attributes" do
      expect(User.new(email: email, password: password)).to be_valid
    end

    it "is not valid without an email" do
      expect(User.new(email: nil, password: password)).to_not be_valid
    end

    it "is not valid without a password" do
      expect(User.new(email: email, password: nil)).to_not be_valid
    end
  end
end
