class OrderItem < ActiveRecord::Base
	validates_presence_of :product_id, :order_id, :price, :quantity
	validates_numericality_of :product_id, :order_id, :price, :quantity
	belongs_to :product
	belongs_to :order
end
