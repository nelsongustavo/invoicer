FactoryGirl.define do
  factory :portion do
    portion_date "2017-03-13"
    Sale do
    	FactoryGirl.create(:sale)
    end
    name "Parcela 01 de 03"
    number 1
    is_paid false
  end
end