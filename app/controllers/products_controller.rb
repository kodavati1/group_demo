class ProductsController < ApplicationController
 

#   include SegmentSupport
  before_action :set_product, :load_products, only: [:edit, :update, :destroy]
#   before_action :current_sub_seg, only: [:edit, :update, :destroy]
#   before_action :require_login, :reload_on_published
def index

end
#   def edit
#     load_keywords
#   end

#   # # POST /keywords
  def create
    @product = Products.new(product_params)
    # @keyword.segment_detail_id = current_sub_seg.id
    flash[:notice] = 'Product was successfully reset'
    unless params[:commit] == 'RESET'
      if @product.save
        # @keyword.assign_user(current_user)
        flash[:notice] = 'Product was successfully created.'
        @product = Product.new
      end
    end
    load_products
    render 'create_or_update'
  end

  # PATCH/PUT /keywords/1
  def update
    
    flash[:notice] = 'Product was successfully reset'
    unless params[:commit] == 'RESET'
      if @product.update(product_params)
        
        flash[:notice] = 'Product was successfully updated.'
        @product = Product.new
      end
    end
    load_keywords
    render 'create_or_update'
  end

#   # DELETE /keywords/1
#   def destroy
#     @keyword.destroy
#     flash[:notice] = 'Keyword was successfully deleted.'
#     @keyword = Keyword.new
#     load_keywords
#     render 'create_or_update'
#   end

  private
  def load_keywords
    @product = Product.all
  end

#   # Use callbacks to share common setup or constraints between actions.
#   def set_keyword
#     @keyword = Keyword.find(params[:id])
#   end

#   # Never trust parameters from the scary internet, only allow the white list through.
  def product_params
    params.require(:product).permit(:product)
  end
end
