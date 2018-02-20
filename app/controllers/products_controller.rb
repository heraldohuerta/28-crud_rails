class ProductsController < ApplicationController

def destroy
  # category_product DELETE /categories/:category_id/products/:id(.:format) products#destroy
 category = Category.find(params[:category_id])
 product = Product.find(params[:id])
 product.destroy
 redirect_to   category_path(category)
end

def create
  @category = Category.find(params[:category_id])
  @product = Product.new(product_params)
  @product.category = @category
  if   @product .save
      redirect_to   category_path(@category) , notice: 'Producto Creado Correctamente.'
    else
      redirect_to   category_path(@category)  , notice: 'Producto no ha sido Creado'
    end
end


  private

  def product_params
    params.require(:product).permit(:name, :price)
  end
end
