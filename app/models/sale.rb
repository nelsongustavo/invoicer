class Sale < ActiveRecord::Base
  belongs_to :Customer
  belongs_to :PaymentMethod
  has_many :products, through: :saleProducts
  validates_presence_of :Customer, :PaymentMethod, :total
end
