# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password

	private
	def cart_list
		re = []
		session[:cart] ||= {}
		session[:cart].each_pair do |key, value|
			begin
		        p = Product.find(key)
		        re << [p, value]
			rescue ActiveRecord::RecordNotFound
		        logger.info("Product not found with \##{key}")
			end
		end
		@cart = re
	end
  
	def authenticate
		authenticate_or_request_with_http_basic('Administration') do |username, password|
		username == 'admin' && password == 'password'
		end
	end
end
