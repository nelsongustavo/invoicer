class Customer < ActiveRecord::Base
	validates_presence_of :enrolment, :name
end
