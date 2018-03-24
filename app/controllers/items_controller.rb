class ItemsController < ApplicationController
  def index
    @items = Item.all
    render json: @items.shuffle[0..9], each_serializer: ItemsSerializer
  end
end
