class Portion < ActiveRecord::Base
  belongs_to :Sale
  validates_presence_of :Sale
end
