class Product < ActiveRecord::Base
  validates_presence_of :title, :price
  validates_uniqueness_of :title
  validates_numericality_of :price
  
	def to_param
		"#{id}-#{title.gsub(/[ űáéőúóü]/,"")}"
	end
end
