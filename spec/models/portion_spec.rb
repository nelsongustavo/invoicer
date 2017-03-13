require 'rails_helper'

RSpec.describe Portion, type: :model do
  describe "Model validations" do

		it "should validate the presence of Sale" do
			portion = build(:portion, Sale: nil)
			expect(portion.save).to be_falsy
		end
	end
end
