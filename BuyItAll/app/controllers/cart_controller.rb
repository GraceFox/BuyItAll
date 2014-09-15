class CartController < ApplicationController

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
    user = User.first
    products = user.products
    products.each &:remove_from_cart!
    redirect_to '/thanks'
  end

end
