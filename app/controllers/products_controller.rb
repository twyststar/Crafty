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
    @user = current_user
    @product = Product.new(product_params)
    if @product.save
      flash[:notice] = "Product successfully added!"
      redirect_to user_path(current_user)
    else
      render new
    end
  end




  private

  def product_params
    params.require(:product).permit(:name, :description, :user_id, :price, :image)
  end

end
