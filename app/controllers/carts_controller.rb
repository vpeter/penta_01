class CartsController < ApplicationController
  before_filter :get_cart
  
  def index
  	cart_list
  end
  
  # params[:id]
  def update
    if session[:cart].has_key?(@id)
      session[:cart][@id] += 1
    else
      session[:cart][@id] = 1
    end
    flash[:notice] = "Frissitettuk a kosarad."
    
    redirect_to carts_path
  end
  def update10
    if session[:cart].has_key?(@id)
      session[:cart][@id] += 10
    else
      session[:cart][@id] = 10
    end
    flash[:notice] = "Frissitettuk a kosarad."
    
    redirect_to carts_path
  end
  
  # params[:id]
  def destroy
    if session[:cart].has_key?(@id)
      if session[:cart][@id] > 1
        session[:cart][@id] -= 1
      else
        session[:cart].delete(@id)
      end
    else
      flash[:notice] = "Valami hiba tortent."
    end
    flash[:notice] = "Türültük a kért terméket a kosaradból."
    
    redirect_to carts_path
  end

  private
  
  def get_cart
    session[:cart] ||= {} #
    @cart = session[:cart]
    @id = params[:id].to_i #
  end

end
