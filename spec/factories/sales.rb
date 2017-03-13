FactoryGirl.define do
  factory :sale do
  	Customer do
      FactoryGirl.create(:customer)
    end
    user_id "1"
    sale_date "2017-03-13"
    total "9.99"
    PaymentMethod do
    	FactoryGirl.create(:master_card)
    end
    times "3"
    is_fitpark false
  end
end
