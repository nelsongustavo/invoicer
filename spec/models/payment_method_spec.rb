require 'rails_helper'

RSpec.describe PaymentMethod, type: :model do
   	
  describe "Model validations" do

		it "should validate the presence of name" do
			master_card = build(:master_card, name: nil)
			expect(master_card.save).to be_falsy
		end
	end
end
