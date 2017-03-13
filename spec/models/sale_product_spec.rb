require 'rails_helper'

RSpec.describe SaleProduct, type: :model do
  describe "Model validations" do

		it "should validate the presence of Sale" do
			sale_product = build(:sale_product, Sale: nil)
			expect(sale_product.save).to be_falsy
		end
	end

	describe "Model validations" do

		it "should validate the presence of Product" do
			sale_product = build(:sale_product, Product: nil)
			expect(sale_product.save).to be_falsy
		end
	end
end
