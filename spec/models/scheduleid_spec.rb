require 'rails_helper'

RSpec.describe Scheduleid, type: :model do
	
	before :each do
		@item = Scheduleid.new
	end

	it "is valid with valid attributes" do
		@item.bus_id = "anything"
		@item.time  = "anything"
		@item.starting_point      = "anything"
		@item.destination      = "anything"
		@item.bus_type      = "anything"
		expect(@item).to be_valid
	end

	it "is not valid without a route" do
		@item.bus_id = nil
		expect(@item).to_not be_valid
	end

	it "is not valid without a route" do
		@item.time = nil
		expect(@item).to_not be_valid
	end

	it "is not valid without a route" do
		@item.starting_point = nil
		expect(@item).to_not be_valid
	end

	it "is not valid without a route" do
		@item.bus_type = nil
		expect(@item).to_not be_valid
	end

	it "is not valid without a route" do
		@item.bus_type = nil
		expect(@item).to_not be_valid
	end

end
