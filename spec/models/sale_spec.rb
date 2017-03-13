require 'rails_helper'

RSpec.describe Sale, type: :model do
 	describe "Model validations" do

		it "should validate the presence of Customer" do
			sale = build(:sale, Customer: nil)
			expect(sale.save).to be_falsy
		end
	end

	describe "Model validations" do

		it "should validate the presence of PaymentMethod" do
			sale = build(:sale, PaymentMethod: nil)
			expect(sale.save).to be_falsy
		end
	end

	describe "Model validations" do

		it "should validate the presence of total" do
			sale = build(:sale, total: nil)
			expect(sale.save).to be_falsy
		end
	end
end
