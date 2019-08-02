class ItemsController < ApplicationController
  def update 
    @item = Item.find_by id: params[:id]
    if @item.update_attributes item_params 
      redirect_to todos_index_url
    else
      redirect_to todos_index_url
    end
  end

  private 
  def item_params
    params.require(:item).permit(:status)
  end
end
