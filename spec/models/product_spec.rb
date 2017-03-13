require 'rails_helper'

RSpec.describe Product, type: :model do
  describe "Model validations" do

		it "should validate the presence of name" do
			product = build(:product, name: nil)
			expect(product.save).to be_falsy
		end
	end
end
