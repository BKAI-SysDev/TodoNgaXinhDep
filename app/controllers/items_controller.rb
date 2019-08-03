class ItemsController < ApplicationController
  def update 
    @item = Item.find_by id: params[:id]
    respond_to do |format|
      format.js do 
        if @item.update_attributes item_params 
        end 
      end
    end
  end

  private 
  def item_params
    params.require(:item).permit(:status)
  end
end
