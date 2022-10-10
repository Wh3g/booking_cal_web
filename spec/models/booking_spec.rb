require 'rails_helper'

RSpec.describe Booking, type: :model do
  context do
    name = "test_user"
    service = "test_service"
    start_time = Time.now
    it "is valid with valid attributes" do
      expect(Booking.new(name: name, service: service, start_time: start_time)).to be_valid
    end
    it "is not valid without a name" do
      expect(Booking.new(name: nil, service: service, start_time: start_time)).to_not be_valid
    end
    it "is not valid without a service" do
      expect(Booking.new(name: name, service: nil)).to_not be_valid
    end
    it "is not valid without a start_time" do
      expect(Booking.new(name: name, service: service, start_time: nil)).to_not be_valid
    end
  end
end
