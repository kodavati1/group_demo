class TypesController < ApplicationController

#   include SegmentSupport
  before_action :set_type, :load_types, only: [:edit, :update, :destroy]
#   before_action :current_sub_seg, only: [:edit, :update, :destroy]
#   before_action :require_login, :reload_on_published
def index

end
#   def edit
#     load_keywords
#   end

#   # # POST /keywords
  def create
    @type = Type.new(type_params)
    # @keyword.segment_detail_id = current_sub_seg.id
    flash[:notice] = 'Type was successfully reset'
    unless params[:commit] == 'RESET'
      if @type.save
        # @keyword.assign_user(current_user)
        flash[:notice] = 'Type was successfully created.'
        @type = Type.new
      end
    end
    load_types
    render 'create_or_update'
  end

  # PATCH/PUT /keywords/1
  def update
    
    flash[:notice] = 'Type was successfully reset'
    unless params[:commit] == 'RESET'
      if @type.update(keyword_params)
        
        flash[:notice] = 'Type was successfully updated.'
        @type = Type.new
      end
    end
    load_types
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
  def load_types
    @types = Type.all
  end

#   # Use callbacks to share common setup or constraints between actions.
#   def set_keyword
#     @keyword = Keyword.find(params[:id])
#   end

#   # Never trust parameters from the scary internet, only allow the white list through.
  def type_params
    params.require(:type).permit(:type)
  end
end