class Order < ActiveRecord::Base
	has_many :order_items
	validates_presence_of :name, :town, :zip, :street
	validates_numericality_of :zip
	validates_length_of :zip, :is => 4 
end
