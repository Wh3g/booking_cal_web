require 'rails_helper'

RSpec.describe Booking, type: :model do
  context do
    user = User.new(email: "name@email.com", password: "password")
    name = "test_user"
    service = "test_service"
    start_time = Time.now
    it "is valid with valid attributes" do
      expect(Booking.new(name: name, service: service, start_time: start_time, user: user)).to be_valid
    end
    it "is not valid without a name" do
      expect(Booking.new(name: nil, service: service, start_time: start_time, user: user)).to_not be_valid
    end
    it "is not valid without a service" do
      expect(Booking.new(name: name, service: nil, start_time: start_time, user: user)).to_not be_valid
    end
    it "is not valid without a start_time" do
      expect(Booking.new(name: name, service: service, start_time: nil, user: user)).to_not be_valid
    end
    it "references a user" do
      expect(Booking.new(name: name, service: service, start_time: start_time, user: nil)).to_not be_valid
    end
  end
end
