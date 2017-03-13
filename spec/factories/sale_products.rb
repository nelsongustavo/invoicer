FactoryGirl.define do
  factory :sale_product do
    Sale do
    	FactoryGirl.create(:sale) 
   	end
    Product do
    	FactoryGirl.create(:product)
    end
    sale_date "2017-03-13"
  end
end
