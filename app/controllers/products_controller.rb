class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)

    if @product.save
      redirect_to @products_path, notice: 'Product was successfully created.'
    else
      render :new
    end
  end

  # def show

  # end


  # def edit

  # end

  # def update

  # end

  # def destroy

  # end

  private

  def product_params
    params.require(:product).permit(:product_name, :product_desc, :amount, :qty, :image)
  end

  # def set_product

  # end
end
