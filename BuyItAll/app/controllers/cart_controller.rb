class CartController < ApplicationController
  before_action :authenticate_user!


  def index
    user = User.first
    @products = user.products
  end

  def add
    user = User.first
    product = Product.find params[:id]
    user.products << product
    user.save!
    redirect_to '/cart'
  end

  def delete
    product = Product.find params[:id]
    product.remove_from_cart!
    redirect_to '/cart'
  end

  def buy
    user = User.find params[:id]
    products = user.products
    products.each &:remove_from_cart!
    flash[:notice] = "You have sucessfully bought beasts"
    redirect_to '/products'
  end

end
