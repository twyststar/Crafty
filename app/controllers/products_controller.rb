class ProductsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @users = User.all
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
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

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      flash[:notice] = "Product successfully updated!"
      redirect_to user_path(current_user)
    else
      render :edit
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to user_path(current_user)
  end



  private

  def product_params
    params.require(:product).permit(:name, :description, :user_id, :price, :image)
  end

end
