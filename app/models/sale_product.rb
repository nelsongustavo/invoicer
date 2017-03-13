class SaleProduct < ActiveRecord::Base
  belongs_to :Sale
  belongs_to :Product
  validates_presence_of :Sale, :Product
end
