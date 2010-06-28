class AdminController < ApplicationController
  before_filter :authenticate
  def show
    render :template => 'admin/index' 
  end
end
