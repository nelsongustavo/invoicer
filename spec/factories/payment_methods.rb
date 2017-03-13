FactoryGirl.define do

  factory :master_card, class: PaymentMethod do
  	name "Master - Crédito"
    description "Cartão de crédito"
  end

  factory :visa_card, class: PaymentMethod do
  	name "Visa - Crédito"
    description "Cartão de crédito"
  end
end
