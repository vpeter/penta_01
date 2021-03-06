class Page < ActiveRecord::Base
  validates_presence_of :title, :content
  validates_uniqueness_of :title
  
	def to_param
		"#{id}-#{title.gsub(/[ űáéőúóü]/,"")}"
	end
end
