require 'rails_helper'

RSpec.describe Customer, type: :model do
  
  describe "Model validations" do

		it "should validate the presence of enrolment" do
			nelson = build(:customer, enrolment: nil)
			expect(nelson.save).to be_falsy
		end

		it "should validate the presence of name" do
			nelson = build(:customer, name: nil)
			expect(nelson.save).to be_falsy
		end
	end
end