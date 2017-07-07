class ProductsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @users = User.all
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
    @user = User.find(params[:user_id])
  end

  def new
    @product = Product.new
  end

  def create 
  end
end
