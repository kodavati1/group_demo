class AddressesController < ApplicationController
  
#   include SegmentSupport
  before_action :set_address, :load_addresses, only: [:edit, :update, :destroy]
#   before_action :current_sub_seg, only: [:edit, :update, :destroy]
#   before_action :require_login, :reload_on_published
def index

end
#   def edit
#     load_keywords
#   end

#   # # POST /keywords
  def create
    @address = Address.new(keyword_params)
    # @keyword.segment_detail_id = current_sub_seg.id
    flash[:notice] = 'Address was successfully reset'
    unless params[:commit] == 'RESET'
      if @address.save
        # @keyword.assign_user(current_user)
        flash[:notice] = 'Address was successfully created.'
        @address = Address.new
      end
    end
    load_addresses
    render 'create_or_update'
  end

  # PATCH/PUT /keywords/1
  def update
    
    flash[:notice] = 'Address was successfully reset'
    unless params[:commit] == 'RESET'
      if @address.update(address_params)
        
        flash[:notice] = 'Address was successfully updated.'
        @address = Address.new
      end
    end
    load_addresses
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
  def load_address
    @addresses = Address.all
  end

#   # Use callbacks to share common setup or constraints between actions.
#   def set_keyword
#     @keyword = Keyword.find(params[:id])
#   end

#   # Never trust parameters from the scary internet, only allow the white list through.
  def address_params
    params.require(:address).permit(:address)
  end
end
